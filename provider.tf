terraform {
    required_providers {
        aws = {
           source =  "harshicorp/aws"
           version = "5.66.0"

        }
    } 
}

provider "aws" {
    #config(options)
    region = "us-east-1"
}
