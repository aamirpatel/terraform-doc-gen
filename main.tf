terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
backend "s3" {
    bucket                 = "myaptestbucketstate"
    key                    = "state/terraform.tfstate"
    region                 = "us-east-1"
    dynamodb_table = "mystate"
  }
}
#vpc exam
provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev-vpc1"
  }
}
