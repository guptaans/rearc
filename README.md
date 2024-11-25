Update variables.tf with your desired region, instance type, and key pair.

Initialize Terraform:



terraform init
Apply the Terraform configuration:



terraform apply
After deployment, note the EC2 public IP output by Terraform.

2. Dockerizing the Application
Build the Docker image:



docker build -t node-docker-app .
Run the Docker container:



docker run -d -p 3000:3000 -e SECRET_WORD="your_secret_word" node-docker-app
Application Access
HTTP:
Access the app at:
http://<ec2-public-ip>:3000

HTTPS:
After TLS setup, access it securely at:
https://your-domain.com

Endpoints
/: Home page.
/docker: Confirms Docker functionality.
/secret_word: Displays the secret word.
/loadbalanced: Simulates load balancing.
/tls: Confirms TLS certificate setup.
This version condenses the key steps while retaining clarity.






