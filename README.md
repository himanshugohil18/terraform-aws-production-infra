````md
# 🚀 Terraform AWS Production Infrastructure

A **Production-Grade AWS Infrastructure Project** built using **Terraform (Infrastructure as Code)** with a **modular architecture**, **multi-environment support**, and reusable Terraform modules.

This repository demonstrates how to provision and manage scalable AWS infrastructure using **Terraform best practices** for **Dev, Staging, and Production environments**.

---

## 📌 Project Overview

This project follows a **modular and scalable Terraform architecture** to provision AWS resources in a clean and reusable manner.

The infrastructure is divided into:

- Development Environment
- Staging Environment
- Production Environment

Each environment is isolated and configurable using reusable Terraform modules.

---

## 🏗️ Infrastructure Components

This repository contains Terraform modules for provisioning AWS resources such as:

✅ Compute Resources (EC2)

✅ Containers Support

✅ Database Infrastructure

✅ Networking Components

✅ Load Balancing

✅ DNS Management

✅ Security Components

✅ IAM Policies & Roles

✅ Storage Services

✅ Monitoring Components

✅ Remote State Management

---

## 📂 Repository Structure

```bash
terraform-aws-production-infra/
│── environments/
│   ├── dev/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   │
│   ├── staging/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   │
│   └── prod/
│       ├── backend.tf
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
│
│── global/
│   ├── budgets/
│   │   ├── main.tf
│   │   └── variables.tf
│   │
│   ├── iam-baseline/
│   │   ├── main.tf
│   │   └── policies.tf
│   │
│   ├── remote-state/
│   │   ├── main.tf
│   │   └── variables.tf
│
│── modules/
│   ├── compute/
│   ├── containers/
│   ├── database/
│   ├── devops/
│   ├── dns/
│   ├── loadbalancing/
│   ├── monitoring/
│   ├── networking/
│   ├── security/
│   └── storage/
│
│── policies/
│   ├── iam/
│   ├── kms/
│   └── s3/
│
│── scripts/
│   ├── deploy.sh
│   ├── destroy.sh
│   └── fmt.sh
│
│── .gitignore
│── Makefile
│── README.md
│── locals.tf
│── outputs.tf
│── providers.tf
│── variables.tf
│── versions.tf
```

---

## ⚙️ Technologies Used

| Technology | Purpose |
|------------|----------|
| Terraform | Infrastructure as Code |
| AWS | Cloud Platform |
| HCL | Terraform Language |
| Bash | Automation Scripts |
| GitHub | Version Control |

---

## ✨ Features

### 🔹 Modular Architecture
Reusable Terraform modules for better scalability and maintainability.

### 🔹 Multi-Environment Setup
Separate infrastructure for:

- Dev
- Staging
- Production

### 🔹 Remote State Management
Terraform remote backend for secure and centralized state management.

### 🔹 Security Best Practices

Includes:

- IAM Policies
- KMS Policies
- S3 Policies
- Environment Separation
- Secure Infrastructure Design

### 🔹 Automation Scripts

Shell scripts included for:

```bash
deploy.sh   # Deploy infrastructure
destroy.sh  # Destroy infrastructure
fmt.sh      # Format Terraform code
```

---

## 🛠️ Prerequisites

Before using this project, ensure you have:

- AWS Account
- Terraform Installed
- AWS CLI Installed
- Git Installed
- Proper AWS IAM Permissions

Verify installations:

```bash
terraform -version
aws --version
git --version
```

---

## 🔐 Configure AWS Credentials

Run:

```bash
aws configure
```

Enter:

```text
AWS Access Key ID
AWS Secret Access Key
Default Region
Default Output Format
```

---

## 🚀 Getting Started

### 1️⃣ Clone Repository

```bash
git clone https://github.com/himanshugohil18/terraform-aws-production-infra.git

cd terraform-aws-production-infra
```

### 2️⃣ Initialize Terraform

```bash
terraform init
```

### 3️⃣ Validate Terraform Configuration

```bash
terraform validate
```

### 4️⃣ Generate Execution Plan

```bash
terraform plan
```

### 5️⃣ Apply Infrastructure

```bash
terraform apply
```

---

## 🌍 Deploy Specific Environment

### Development Environment

```bash
cd environments/dev

terraform init
terraform plan
terraform apply
```

### Staging Environment

```bash
cd environments/staging

terraform init
terraform plan
terraform apply
```

### Production Environment

```bash
cd environments/prod

terraform init
terraform plan
terraform apply
```

---

## 🧹 Destroy Infrastructure

To destroy deployed infrastructure:

```bash
terraform destroy
```

Or using automation script:

```bash
./scripts/destroy.sh
```

---

## 📈 Terraform Best Practices Used

✔️ Modular Infrastructure Design

✔️ Environment Isolation

✔️ Reusable Terraform Modules

✔️ Variables Management

✔️ Outputs Management

✔️ Version Pinning

✔️ Remote State Management

✔️ Infrastructure Automation

✔️ Production-Level Folder Structure

✔️ Code Reusability

---

## 📸 Architecture Diagram

You can add your AWS architecture diagram here.

Example:

```text
docs/architecture-diagram.png
```

---

## 🔄 Useful Commands

### Format Terraform files

```bash
terraform fmt
```

### Check Terraform syntax

```bash
terraform validate
```

### Show Terraform plan

```bash
terraform plan
```

### Apply infrastructure

```bash
terraform apply
```

### Destroy infrastructure

```bash
terraform destroy
```

---

## 🤝 Contributing

Contributions are welcome!

Feel free to fork this repository and create a pull request.

---

## 👨‍💻 Author

**Himanshu Gohil**  
Aspiring **DevOps & Cloud Engineer** ☁️

### GitHub
https://github.com/himanshugohil18

### LinkedIn
(Add Your LinkedIn Profile Link)

---

## ⭐ Support

If you found this project useful, consider giving it a **Star ⭐** on GitHub.

---

## 🚀 Future Improvements

- CI/CD Pipeline with GitHub Actions
- Kubernetes (EKS) Integration
- Monitoring with CloudWatch
- Infrastructure Security Enhancements
- Automated Terraform Testing
- Multi-Region Deployment Support
````
