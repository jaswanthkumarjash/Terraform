terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.26.0"
        }
    }
    backend "s3" {
        bucket = "roboshop-rs-bucket"
        key    = "locals-sf"
        region = "us-east-1"
        use_lockfile = true
        encrypt = true
    }
}

provider "aws" {
    # Configuration options
}