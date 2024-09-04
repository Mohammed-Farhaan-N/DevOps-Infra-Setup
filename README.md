# DevOps-Infra-Setup 🚀

Welcome to the **DevOps-Infra-Setup** project! This tool is designed to streamline the installation and configuration of essential DevOps tools and infrastructure components, specifically for Ubuntu/Debian operating systems. 

## 🎯 Features

- **Automated Setup Scripts**:
  - **Default Setup**: Installs Java, AWS CLI, Docker, Terraform, and Ansible.
  - **Jenkins Setup**: Installs and configures Jenkins only.
  - **Full CI/CD Environment**: Installs Jenkins, SonarQube, Trivy, and Nexus.
  - **Kubernetes Environment**: Sets up `kubectl`, Helm, and `eksctl` for managing Kubernetes clusters.

- **Predefined Credentials**:
  - **Jenkins Username**: `admin`
  - **Jenkins Password**: `admin`
  - **SonarQube Username**: `admin`
  - **SonarQube Password**: `admin`

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
    chmod +x *.sh
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

## 📝 Prerequisites

Ensure the following are installed before running the setup scripts:

- **Git**: Required to clone the repository.
- **Bash**: Required to execute the scripts.

## 🛡 Notes

- This setup is specifically developed for **Ubuntu/Debian** operating systems. Ensure you run these scripts on a compatible environment.
- This project is in development, and additional features and improvements will be added over time.
- Default credentials are provided for initial setup convenience. For security, please change these credentials in your environment after installation.

## 🤝 Contributing

Contributions are welcome! Feel free to create a pull request or report any issues.

## 📜 License

This project is open-source and available under the [MIT License](LICENSE).

## 👤 Author

Created by [Mohammed Farhaan N](https://github.com/Mohammed-Farhaan-N)

---

### Notes on Enhancements:
- **Professional Tone**: The README is written in a formal tone with clear sections and headings.
- **Emojis**: Added emojis to make the document visually engaging.
- **Compatibility Note**: Included a note about compatibility with Ubuntu/Debian OS.
  
You can further enhance the README by adding relevant images or GIFs to demonstrate setup processes or the tools in action.
