# backend.tf
terraform {
  backend "s3" {
    bucket         = "solar-system-tfstate-2026"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    
  }
}