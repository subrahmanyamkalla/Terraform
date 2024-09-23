terraform {
    required_providers {
        aws = {
           source =  "hashicorp/aws"
           version = "5.66.0"

        }
} 

backend "s3" {
    bucket = "kvs-bucket-sep22"
    key    = "kvs-buckets-demo"
    region = "us-east-1"
    dynamodb_table = "kvs_table"
   }
}

provider "aws" {
    #config(options)
    region = "us-east-1"
}

