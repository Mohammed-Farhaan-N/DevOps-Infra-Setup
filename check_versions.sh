#!/bin/bash

echo "Checking versions of installed tools..."


# Java
echo -n "Java: "
java -version 2>&1 | head -n 1 || echo "Not installed"

# AWS CLI
echo -n "AWS CLI: "
aws --version 2>/dev/null || echo "Not installed"

# Terraform
echo -n "Terraform: "
terraform version 2>/dev/null || echo "Not installed"

# Ansible
echo -n "Ansible: "
ansible --version 2>/dev/null | head -n 1 || echo "Not installed"


# Docker
echo -n "Docker: "
docker --version 2>/dev/null || echo "Not installed"

# Trivy
echo -n "Trivy: "
trivy --version 2>/dev/null || echo "Not installed"

# SonarQube 
echo "Checking for running SonarQube container running port 9000..."
docker ps --filter "name=sonarqube"

# Nexus 
echo "Checking for running nexus container running port 8081..."
docker ps --filter "name=nexus"

# kubectl
echo -n "kubectl: "
kubectl version --client --short 2>/dev/null || echo "Not installed"

# Helm
echo -n "Helm: "
helm version --short 2>/dev/null || echo "Not installed"

# eksctl
echo -n "eksctl: "
eksctl version 2>/dev/null || echo "Not installed"






echo "Version check completed."
