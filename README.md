# Node.js Application Deployment on AWS EC2 with Terraform, Docker, and Let’s Encrypt

This guide outlines the steps required to deploy a Node.js application on AWS EC2 using Terraform for infrastructure provisioning, Docker for containerization, and Let’s Encrypt for securing the application with an SSL certificate.

---

## Table of Contents

1. [Setup Instructions](#setup-instructions)  
    - [Infrastructure Provisioning with Terraform](#1-infrastructure-provisioning-with-terraform)  
    - [Dockerizing the Application](#2-dockerizing-the-application)  
2. [Application Access](#application-access)  

---

## Setup Instructions

### 1. Infrastructure Provisioning with Terraform

#### Clone the Repository

Start by cloning the repository and navigating into the project directory:

```bash
git clone <repository-url>
cd <repository-directory>
Update Variables
In the variables.tf file, update the following parameters to fit your environment:

Set your desired region.
Choose the instance type for your EC2 instance.
Specify your key pair for SSH access to the instance.
Initialize Terraform
Run the following command to initialize Terraform and download the required providers:

bash
Copy code
terraform init
Apply Terraform Configuration
Once initialization is complete, use the following command to provision the AWS infrastructure:

bash
Copy code
terraform apply
Terraform will prompt you to confirm the actions. Type yes to proceed with the deployment.

Output EC2 Public IP
After a successful deployment, Terraform will output the public IP of the newly created EC2 instance. This IP will be used to access the application in the next steps.

2. Dockerizing the Application
Build the Docker Image
Navigate to the project directory and build the Docker image for the Node.js application using the following command:

bash
Copy code
docker build -t node-docker-app .
Run the Docker Container
Start the Docker container and pass the SECRET_WORD environment variable:

bash
Copy code
docker run -d -p 3000:3000 -e SECRET_WORD="your_secret_word" node-docker-app
This command runs the Docker container in detached mode, exposing the application on port 3000 and injecting the SECRET_WORD environment variable into the application.

Verify the Application
You can now access the Node.js application in your browser by navigating to:

plaintext
Copy code
http://<ec2-public-ip>:3000
Replace <ec2-public-ip> with the public IP address of the EC2 instance, which was provided by Terraform.

Application Access
HTTP Access:
Access the application at:
http://<ec2-public-ip>:3000

HTTPS Access:
After SSL is configured, you will be able to access the application securely at:
https://your-domain.com

Application Endpoints
/: Welcome message (home page of the application).
/docker: Confirms Docker functionality by displaying relevant information about the Docker container.
/secret_word: Displays the secret word, which is injected via the SECRET_WORD environment variable.
/loadbalanced: Simulates the behavior of the application running behind a load balancer.
/tls: Confirms that the TLS certificate is properly configured and SSL is working.
File Structure
plaintext
Copy code
.
├── Dockerfile            # Dockerfile to build and run the Node.js app
├── index.js              # Node.js application entry point
├── package.json          # Node.js project dependencies and metadata
├── terraform/
│   ├── main.tf           # Terraform configuration for AWS resources
│   ├── variables.tf      # Input variables for Terraform
│   ├── outputs.tf        # Output configuration for Terraform
│   └── provider.tf       # AWS provider configuration
└── README.md             # Project documentation
