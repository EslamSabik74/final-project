
# AWS Configuration
variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "solar-system-eks"
}

variable "instance_type" {
  description = "EC2 Instance Type for EKS nodes"
  type        = string
  default     = "t3.medium"
}

# VPC
variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# RDS
variable "db_name" {
  description = "Database Name"
  type        = string
  default     = "solarsystemdb"
}

variable "db_username" {
  description = "Database Username"
  type        = string
  default     = "admin"
}

# Tags
variable "tags" {
  description = "Common tags"
  type        = map(string)
  default = {
    Project     = "solar-system"
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}