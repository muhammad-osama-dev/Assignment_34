# Terraform AWS Infrastructure Deployment

This repository contains Terraform configuration files to provision an AWS infrastructure for hosting a sample application. The infrastructure includes:

1. EC2 instance(s) for the application.
2. An RDS instance for data storage.
3. Appropriate security groups, IAM roles, and networking configurations.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials configured on your machine with appropriate permissions.

## Configuration

1. **Clone Repository:**
   ```bash
   git clone <repository_url>
   ```

2. **Update Variables:**
   - Navigate to the relevant Terraform configuration files.
   - Replace placeholder values like AMI ID, region, usernames, passwords, etc., with your actual values.

## Deployment Instructions

### Initializing Terraform

Before deploying the infrastructure, initialize Terraform by running the following command in your terminal:

```bash
terraform init
```

### Deploying the Infrastructure

To deploy the infrastructure, follow these steps:

1. **Plan the Deployment:**

   Run the following command to see the execution plan of the infrastructure changes:

   ```bash
   terraform plan
   ```

   This command will display a summary of the changes Terraform will make.

2. **Apply the Changes:**

   Once you've reviewed the plan and are ready to proceed, apply the changes by running:

   ```bash
   terraform apply
   ```

   This command will provision the AWS infrastructure according to the defined configuration.

### Cleaning Up Resources

To destroy the infrastructure and clean up resources, follow these steps:

1. **Initiate Destruction:**

   Run the following command to destroy the infrastructure:

   ```bash
   terraform destroy
   ```

2. **Confirm Destruction:**

   Terraform will prompt you to confirm the destruction. Type `yes` and press Enter to proceed with the cleanup.

## Additional Notes

- Make sure to review and update the Terraform configuration files according to your requirements before deploying the infrastructure.
- After deploying the infrastructure, you can access your EC2 instance and RDS instance using their respective endpoints provided by AWS.
- Ensure that you have properly configured security groups and 
