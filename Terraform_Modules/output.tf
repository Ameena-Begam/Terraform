output "vpc_id" {
  value = module.vpc.vpc_id
}

 

output "s3_bucket_name" {
  value = module.s3.s3_bucket_name
}

 

output "rds_instance_id" {
  value = module.rds.db_instance_id
}

 

# Define other outputs...