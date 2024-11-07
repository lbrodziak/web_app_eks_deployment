# DevOps Project: Simple Web App Deployment on AWS EKS using Terraform

This project demonstrates deploying a simple web application to AWS EKS using Docker, Amazon ECR, and Terraform. It includes:

- **Web Application**: A basic Flask web app containerized with Docker.
- **Infrastructure as Code**: Terraform files to set up AWS resources.
- **Deployment**: Deployment files for Kubernetes to deploy on EKS.

---

## Project Structure

```
repo-root/
├── README.md
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── web-app/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
└── kubernetes/
    ├── deployment.yaml
    └── service.yaml
```

---

## Steps to Deploy

### 1. Set Up AWS CLI
Install the AWS CLI and configure it with your credentials:
- [AWS CLI Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

### 2. Create a Simple Web App with Flask

Navigate to the **web-app** directory for the files:
- [app.py](web-app/app.py)
- [Dockerfile](web-app/Dockerfile)
- [requirements.txt](web-app/requirements.txt)

### 3. Set Up AWS Infrastructure with Terraform

Navigate to the **terraform** directory and initialize and apply the configuration:
- [main.tf](terraform/main.tf)
- [variables.tf](terraform/variables.tf)
- [outputs.tf](terraform/outputs.tf)

### 4. Configure kubectl for EKS

After creating the EKS cluster with Terraform, update the `kubeconfig` for `kubectl`:
```bash
aws eks --region <your-region> update-kubeconfig --name <your-cluster-name>
```

### 5. Push Docker Image to Amazon ECR

Instructions to push the Docker image to ECR.

### 6. Deploy the Web App to EKS

Navigate to the **kubernetes** directory and apply the deployment and service files:
- [deployment.yaml](kubernetes/deployment.yaml)
- [service.yaml](kubernetes/service.yaml)

---

## Clean Up Resources

After completing the project, run this command to destroy the infrastructure:
```bash
terraform destroy -auto-approve
```

--- 

This project provides a complete DevOps deployment workflow from local development to cloud deployment on AWS EKS, ideal for a DevOps portfolio.
