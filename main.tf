terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

#s3 bucket
resource "aws_s3_bucket" "demo_bucket" {
    bucket = "testbucket-for-transcribe-1238760"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}
