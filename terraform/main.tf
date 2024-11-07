# Define the AWS provider and region
provider "aws" {
  region = var.aws_region
}

# Create a Virtual Private Cloud (VPC) for the EKS cluster
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet in the VPC
resource "aws_subnet" "main_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
}

# Use the EKS module to create an EKS cluster
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.21"
  vpc_id          = aws_vpc.main_vpc.id
}

# Output the EKS cluster endpoint
output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
