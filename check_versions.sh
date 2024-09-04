#!/bin/bash

echo "=============================================="
echo "     Checking Versions of Installed Tools     "
echo "=============================================="

# Java
echo -e "\nJava: "
java -version 2>&1 | head -n 1 || echo "Not installed"

# AWS CLI
echo -e "\nAWS CLI: "
aws --version 2>/dev/null || echo "Not installed"

# Terraform
echo -e "\nTerraform: "
terraform version 2>/dev/null || echo "Not installed"

# Ansible
echo -e "\nAnsible: "
ansible --version 2>/dev/null | head -n 1 || echo "Not installed"


# Docker
echo -e "\nDocker: "
docker --version 2>/dev/null || echo "Not installed"

# Trivy
echo -e "\nTrivy: "
trivy --version 2>/dev/null || echo "Not installed"

# SonarQube
echo -e "\nChecking for running SonarQube container running port 9000..."
echo -e "\n"
docker ps --filter "name=sonarqube"

# Nexus
echo -e "\nChecking for running nexus container running port 8081..."
echo -e "\n"
docker ps --filter "name=nexus"

# kubectl
echo -e "\nkubectl: "
kubectl version --client  2>/dev/null || echo "Not installed"

# Helm
echo -e "\nHelm: "
helm version  --short 2>/dev/null || echo "Not installed"

# eksctl
echo -e "\neksctl: "
eksctl version 2>/dev/null || echo "Not installed"


echo -e "\n=============================================="
echo "           Version Check Completed            "
echo "=============================================="

