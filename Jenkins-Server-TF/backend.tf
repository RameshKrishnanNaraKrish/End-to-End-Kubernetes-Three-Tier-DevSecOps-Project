terraform {
  backend "s3" {
    bucket         = "mys3-3tire-bucket"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 3.6.1"
      source  = "hashicorp/aws"
    }
  }
}