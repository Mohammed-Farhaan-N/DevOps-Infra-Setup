# DevOps-Infra-Setup 🚀

Welcome to the **DevOps-Infra-Setup** project! This will help you streamline the installation and configuration of essential DevOps tools and infrastructure. Designed specifically for Ubuntu/Debian systems, it offers a seamless setup experience, so you can focus on optimizing your workflows and advancing your projects. Trust me you are going to save a Ton of time!!!! 

## 🎯 Features

- **Automated Setup Scripts**:
  - **Default Setup**: Installs Java, AWS CLI, Docker, Terraform, and Ansible.
  - **Jenkins Setup**: Installs and configures Jenkins only.
  - **Full CI/CD Environment**: Installs Jenkins, SonarQube, Trivy, and Nexus.
  - **Kubernetes Environment**: Sets up `kubectl`, Helm, and `eksctl` for managing Kubernetes clusters.


- **Security Note**:
  - **Jenkins Initial Admin Password**: I have reverse-engineered and bypassed the initial admin password setup for Jenkins. The credentials `admin` for both username and password are provided for convenience.
  
- **Predefined Credentials**:
  - **Jenkins Username**: `admin`
  - **Jenkins Password**: `admin`
 
    
## 🛠 Getting Started

To get started with the setup, follow these steps:

1. **Clone the repository**:

    ```bash
    git clone https://github.com/Mohammed-Farhaan-N/DevOps-Infra-Setup.git
    ```

2. **Navigate to the project directory**:

    ```bash
    cd DevOps-Infra-Setup
    ```

3. **Make the setup scripts executable**:

    ```bash
    chmod +x infra_setup.sh
    ```

4. **Run the basic installation**:

    ```bash
    sudo ./basement.sh
    ```

## ⚙️ Usage

Choose the script based on your needs:

- **Install Jenkins only**:
    ```bash
    sudo ./jenkins.sh
    ```

- **Install Full CI/CD Environment (Jenkins, SonarQube, Trivy, Nexus)**:
    ```bash
    sudo ./full-CI-CD-setup.sh
    ```

- **Set up Kubernetes Environment (kubectl, Helm, eksctl)**:
    ```bash
    ./Kube.setup.sh
    ```

- **Verify all tools are installed**:
    ```bash
    sudo ./check-version.sh
    ```

## 🛡 Notes

- This setup is specifically developed for **Ubuntu/Debian** operating systems. Ensure you run these scripts on a compatible environment.
- This project is in development, and additional features and improvements will be added over time.
- Default credentials are provided for initial setup convenience. For security, please change these credentials in your environment after installation.

## 🤝 Contributing

Contributions are welcome! Please don't hesitate to create a pull request or report any issues.

## 📜 License

This open-source project is available under the [MIT License](LICENSE).

## 👤 Author

Created by [Mohammed Farhaan N](https://github.com/Mohammed-Farhaan-N)
