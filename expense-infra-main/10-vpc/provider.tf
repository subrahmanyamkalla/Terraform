terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "81s-remote-state-kvs"
    key    = "expense-vpc-dev"
    region = "us-west-2"
    dynamodb_table = "81s-locking-kvs"
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
}