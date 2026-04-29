terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state — uncomment AFTER creating the S3 bucket and
  # DynamoDB table in Step 33. Commented initially to avoid the
  # chicken-and-egg problem of Terraform managing its own backend.
  #
  # backend "s3" {
  #   bucket         = "cicd-lab-tfstate-<your-unique-suffix>"
  #   key            = "prod/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "cicd-lab-tflocks"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.region
}