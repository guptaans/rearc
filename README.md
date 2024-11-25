Setup Instructions
1. Infrastructure Provisioning with Terraform
Clone the Repository:

bash
Copy code
git clone <repository-url>
cd <repository-directory>
Update Variables: Modify variables.tf to set the desired region, instance type, and key pair.

Initialize Terraform: Run the following command to download the required providers:

bash
Copy code
terraform init
Apply Terraform Configuration: Create the AWS infrastructure by running:

bash
Copy code
terraform apply
Confirm the action by typing yes when prompted.

Output EC2 Public IP: After successful deployment, Terraform will output the public IP of the EC2 instance.

2. Dockerizing the Application
Build the Docker Image: Navigate to the project directory and build the Docker image:

bash
Copy code
docker build -t node-docker-app .
Run the Container: Start the Docker container with the necessary environment variable:

bash
Copy code
docker run -d -p 3000:3000 -e SECRET_WORD="your_secret_word" node-docker-app
Verify Application: Access the application in your browser at:

plaintext
Copy code
http://<ec2-public-ip>:3000

Application Access
HTTP: http://<ec2-public-ip>:3000
HTTPS: https://your-domain.com
Endpoints:
/: Welcome message
/docker: Confirms Docker functionality
/secret_word: Displays the secret word set via environment variables
/loadbalanced: Simulates behavior behind a load balancer
/tls: Confirms TLS setup

Please find the screenshot attached.