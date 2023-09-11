provider "aws" {
  region = "ap-south-1"
  access_key = "AKIATLQY4Y2UWZUKN45G"
  secret_key = "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"
}


resource "aws_vpc" "test_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "test_vpc"
  }
}
