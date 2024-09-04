# DevOps-Infra-Setup

This project aims to reduce the time required for the installation and configuration of essential DevOps tools and infrastructure components. The setup process is currently in development and will provide an automated script to configure a basic DevOps environment, including Jenkins and SonarQube.

## Features

- **Automated Setup**: Installs and configures Jenkins, SonarQube, and other necessary DevOps tools.
- **Predefined Credentials**:
  - **Jenkins Username**: `admin`
  - **Jenkins Password**: `admin`
  - **SonarQube Username**: `admin`
  - **SonarQube Password**: `admin`

## Getting Started

To use this setup script, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/Mohammed-Farhaan-N/DevOps-Infra-Setup.git
    ```

2. Change to the project directory:

    ```bash
    cd DevOps-Infra-Setup
    ```

3. Make the setup script executable:

    ```bash
    chmod +x infra_setup.sh
    ```

4. Run the setup script with superuser privileges:

    ```bash
    sudo bash ./infra_setup.sh
    ```

## Prerequisites

Ensure you have the following installed before running the setup script:

- **Git**: To clone the repository.
- **Bash**: To execute the script.

## Notes

- This setup is currently in development. Additional features and improvements will be added over time.
- Default credentials are set for ease of use during the initial setup. Please change these credentials in your environment for security purposes after installation.

## Contributing

Feel free to contribute to this project by creating a pull request or reporting an issue.

## License

This project is open-source and available under the [MIT License](LICENSE).

## Author

Created by [Mohammed Farhaan N](https://github.com/Mohammed-Farhaan-N)
