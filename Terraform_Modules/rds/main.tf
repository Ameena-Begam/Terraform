resource "aws_db_instance" "main" {
  allocated_storage    = var.db_allocated_storage
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "password"

 

  tags = {
    Name = "MyDBInstance"
  }
}