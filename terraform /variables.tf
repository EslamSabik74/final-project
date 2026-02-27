variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "solar-system-cluster"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "solarsystemdb"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "production"
    Project     = "solar-system"
    ManagedBy   = "terraform"
  }
}