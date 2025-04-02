# Terraform AWS & Azure Multi-Cloud Deployment

[![Terraform](https://img.shields.io/badge/IaC-Terraform-blue)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Cloud-AWS-orange)](https://aws.amazon.com/)
[![Azure](https://img.shields.io/badge/Cloud-Azure-blue)](https://azure.microsoft.com/)

This repository contains Terraform configurations to deploy a federated multi-cloud Kubernetes cluster on AWS and Azure.

## Features

- Deploys an EKS cluster on AWS and an AKS cluster on Azure.
- Configures networking, IAM roles, and security groups.
- Sets up EBS CSI Addon for EKS.
- Uses Infrastructure as Code (IaC) best practices.
- Supports modular deployment.

## Prerequisites

- Terraform v1.3+
- AWS CLI configured with credentials.
- Azure CLI logged in with appropriate permissions.
- `kubectl` installed for cluster management.

## Installation

Clone the repository:

git clone https://github.com/sparrowapp-dev/sparrow-infra.git
cd sparrow-infra


# AWS-Cloud Kubernetes Deployment (AWS & Azure)

## AWS Cluster Deployment

### Navigate to the AWS Module Directory  

cd ./AWS/module/

RUN
terraform init
terraform plan
terraform apply -auto-approve

### To destroy the infrastructure:
terraform destroy -auto-approve

### Azure-Cloud Kubernetes Deployment
### Azure Cluster Deployment
### Navigate to the Azure Module Directory  

cd .\Azure\modules\

RUN
terraform init
terraform plan
terraform apply -auto-approve

### To destroy the infrastructure:
terraform destroy -auto-approve

