terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  # Set version constraints for providers here
  required_version = ">= 0.12"  # Example version constraint for Terraform itself
}

provider "aws" {
  region = "us-east-1"  # Set your desired default region here
}

# Define your AWS resources below...
