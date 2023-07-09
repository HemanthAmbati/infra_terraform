terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }

}

provider "aws" {
  region = "us-west-2"  # Replace with your desired AWS region
}