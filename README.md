
# Azure Virtual Machines with Load Balancer

## Overview
This project deploys multiple Azure Virtual Machines (VMs) behind a Load Balancer using Terraform.

## Features
- Creates an Azure Virtual Network & Subnet
- Deploys a Load Balancer with a Public IP
- Creates Virtual Machines (default: 2) behind the Load Balancer
- Uses **Azure DevOps Pipelines** for CI/CD

##Azure DevOps Pipeline
To deploy this using Azure DevOps:
- Create a new pipeline and reference the `azure-pipelines.yml` file.

