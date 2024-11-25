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

http://ec2-instance-ip:3000
https://ELB-endpoint:3000

Endpoints
/: Home page.
/docker: Confirms Docker functionality.
/secret_word: Displays the secret word.
/loadbalanced: Simulates load balancing.
/tls: Confirms TLS certificate setup.
This version condenses the key steps while retaining clarity.



<img width="1024" alt="Screenshot 2024-11-25 at 4 05 17 PM" src="https://github.com/user-attachments/assets/20327247-e829-4d06-b569-65eaed4fafcb">
<img width="1229" alt="Screenshot 2024-11-25 at 4 05 05 PM" src="https://github.com/user-attachments/assets/d6864ddf-a3c8-4adc-8041-0c146dfd2e4d">
<img width="1164" alt="Screenshot 2024-11-25 at 4 04 36 PM" src="https://github.com/user-attachments/assets/0106cbf5-7f52-4e77-a78b-ec72e0bfc4cb">
<img width="1138" alt="Screenshot 2024-11-25 at 4 27 04 PM" src="https://github.com/user-attachments/assets/0b5c8be3-4265-43c6-9e7c-9e1019eb0c92">
<img width="1122" alt="Screenshot 2024-11-25 at 4 20 06 PM" src="https://github.com/user-attachments/assets/d65c0f98-450b-4224-aaa6-c14202cc1160">
<img width="1247" alt="Screenshot 2024-11-25 at 4 19 49 PM" src="https://github.com/user-attachments/assets/e0d26d67-b9d4-4d8f-bc6d-b7284ccfa284">
<img width="1236" alt="Screenshot 2024-11-25 at 4 29 15 PM" src="https://github.com/user-attachments/assets/5162d043-d1a3-409b-81ce-993ce572a5ac">
<img width="1001" alt="Screenshot 2024-11-25 at 4 07 05 PM" src="https://github.com/user-attachments/assets/cbd405ea-165c-4cd9-8495-449b8fd2a9f9">
<img width="1206" alt="Screenshot 2024-11-25 at 4 29 10 PM" src="https://github.com/user-attachments/assets/07507db7-a749-40d5-9e4b-c9c59136477d">
<img width="1412" alt="Screenshot 2024-11-25 at 4 27 38 PM" src="https://github.com/user-attachments/assets/80dd8720-a70f-485f-b119-0d5796966fb4">
<img width="1042" alt="Screenshot 2024-11-25 at 4 05 23 PM" src="https://github.com/user-attachments/assets/faef57a1-e5ae-4d80-a390-19d752bddb65">
<img width="1248" alt="Screenshot 2024-11-25 at 4 27 17 PM" src="https://github.com/user-attachments/assets/e3efd86b-ce67-46da-8e35-f662f30e5f62">




