terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.37"  # Specify the version constraint as a string
    }
  }
}



provider "aws" {
  region = "us-east-1"  # Set your desired default region here
}


