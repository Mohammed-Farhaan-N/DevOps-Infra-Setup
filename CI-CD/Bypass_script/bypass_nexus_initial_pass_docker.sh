#!/bin/bash

# Define the Docker container name or ID for Nexus
DOCKER_CONTAINER_NAME="nexus"  # Replace with your actual container name or ID

# Define the paths inside the Docker container
NEXUS_PROPERTIES_PATH="/nexus-data/etc/nexus.properties"
USERS_PROPERTIES_PATH="/nexus-data/etc/security/users.properties"

# Function to configure the nexus.properties file inside the container
configure_nexus_properties() {
  echo "Configuring nexus.properties to disable random initial password in Docker container..."

  # Check if nexus.properties exists; if not, create it
  docker exec -it $DOCKER_CONTAINER_NAME sh -c "if [ ! -f $NEXUS_PROPERTIES_PATH ]; then
    echo 'nexus.properties file not found, creating...'
    mkdir -p /nexus-data/etc
    touch $NEXUS_PROPERTIES_PATH
  fi"

  # Add or update the property to disable the random password
  docker exec -it $DOCKER_CONTAINER_NAME sh -c "if grep -q '^nexus.security.randompassword' $NEXUS_PROPERTIES_PATH; then
    sed -i 's/^nexus.security.randompassword=.*/nexus.security.randompassword=false/' $NEXUS_PROPERTIES_PATH
  else
    echo 'nexus.security.randompassword=false' >> $NEXUS_PROPERTIES_PATH
  fi"
}

# Function to configure the users.properties file inside the container
configure_users_properties() {
  echo "Configuring users.properties to set admin credentials in Docker container..."

  # Set admin credentials
  ADMIN_USER="admin"
  ADMIN_PASSWORD="admin"  # Replace with your desired password
  ADMIN_EMAIL="admin@example.com"

  # Check if users.properties exists; if not, create it
  docker exec -it $DOCKER_CONTAINER_NAME sh -c "if [ ! -f $USERS_PROPERTIES_PATH ]; then
    echo 'users.properties file not found, creating...'
    mkdir -p /nexus-data/etc/security
    touch $USERS_PROPERTIES_PATH
  fi"

  # Set or update admin credentials
  docker exec -it $DOCKER_CONTAINER_NAME sh -c "if grep -q '^$ADMIN_USER=' $USERS_PROPERTIES_PATH; then
    sed -i 's/^$ADMIN_USER=.*/$ADMIN_USER=$ADMIN_PASSWORD,admin,$ADMIN_EMAIL,enabled/' $USERS_PROPERTIES_PATH
  else
    echo '$ADMIN_USER=$ADMIN_PASSWORD,admin,$ADMIN_EMAIL,enabled' >> $USERS_PROPERTIES_PATH
  fi"
}

# Function to restart Nexus Docker container
restart_nexus_container() {
  echo "Restarting Nexus Docker container..."
  docker restart $DOCKER_CONTAINER_NAME
}

# Run the configuration functions
configure_nexus_properties
configure_users_properties

# Restart the Nexus container to apply changes
restart_nexus_container

echo "Nexus initial password bypass is configured in Docker."
#created by https://github.com/Mohammed-Farhaan-N
