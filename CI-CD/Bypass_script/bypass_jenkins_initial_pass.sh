#!/bin/bash

# Define variables
JENKINS_CONFIG_FILE="/etc/default/jenkins"
GROOVY_SCRIPTS_DIR="/var/lib/jenkins/init.groovy.d"
GROOVY_SCRIPT_FILE="$GROOVY_SCRIPTS_DIR/configure_admin_user.groovy"

# Update Jenkins configuration to disable the setup wizard
echo "Updating Jenkins configuration to disable the setup wizard..."
if ! grep -q "JAVA_ARGS=\"-Djenkins.install.runSetupWizard=false\"" "$JENKINS_CONFIG_FILE"; then
    echo 'JAVA_ARGS="-Djenkins.install.runSetupWizard=false"' | sudo tee -a "$JENKINS_CONFIG_FILE" > /dev/null
fi

# Create the directory for Groovy scripts if it doesn't exist
echo "Creating Groovy scripts directory..."
sudo mkdir -p "$GROOVY_SCRIPTS_DIR"

# Create the Groovy script to set up an admin user
echo "Creating Groovy script for admin user..."
sudo tee "$GROOVY_SCRIPT_FILE" > /dev/null <<EOL
import jenkins.model.*
import hudson.security.*

def instance = Jenkins.getInstance()

// Set up the Jenkins built-in user database
def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount("admin", "admin")  // Replace with your desired username and password
instance.setSecurityRealm(hudsonRealm)

// Set up the authorization strategy
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)  // Disable anonymous access
instance.setAuthorizationStrategy(strategy)

instance.save()

println "Admin user 'admin' created with password 'admin'."
EOL


# Restart Jenkins to apply the changes
echo "Restarting Jenkins to apply changes..."
sudo systemctl restart jenkins

echo "Jenkins setup is complete. The initial admin password has been disabled and an admin user has been created."
#created by https://github.com/Mohammed-Farhaan-N