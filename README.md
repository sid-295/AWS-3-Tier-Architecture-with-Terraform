# 🌐 AWS 3-Tier Architecture with Terraform

## 📌 Project Overview
This project provisions a **highly available 3-tier infrastructure** on AWS **entirely using Terraform**.  
It follows **Infrastructure as Code (IaC)** best practices, using a **modular approach** for networking, compute, database, and storage resources.

---

## 🏗️ Infrastructure Components

### 1️⃣ Networking Layer
- Custom **VPC** with defined CIDR block  
- Public & private subnets across **2 Availability Zones**  
- **Internet Gateway** for public access  
- **NAT Gateway** for secure outbound internet access from private subnets  
- Route tables for traffic management  

### 2️⃣ Compute Layer
- **Application Load Balancer** in public subnets  
- **Auto Scaling Group** with EC2 instances in private subnets  
- Security Groups enforcing least-privilege rules  

### 3️⃣ Database & Storage Layer
- **RDS MySQL** with Multi-AZ deployment for high availability  
- **S3 bucket** for static files and backups  

---

## 🛠️ Tools & Technologies
- **Terraform** (Infrastructure as Code)  
- **AWS** — VPC, EC2, ALB, RDS, S3, IAM  

