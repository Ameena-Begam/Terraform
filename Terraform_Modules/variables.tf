variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

 

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  default     = "my-terraform-s3-bucket"
}

 

variable "db_allocated_storage" {
  description = "Allocated storage for the RDS instance"
  default     = 20
}

 

# Define other variables...