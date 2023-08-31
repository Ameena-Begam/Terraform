module "vpc" {
  source   = "./vpc"
  vpc_cidr = var.vpc_cidr
}

 

module "s3" {
  source           = "./s3"
  s3_bucket_name   = var.s3_bucket_name
}

 

module "rds" {
  source              = "./rds"
  db_allocated_storage = var.db_allocated_storage
}