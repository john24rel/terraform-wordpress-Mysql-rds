  region              = "us-east-2"
  cidr_block          = "10.0.0.0/16"
  private_cidr_block1 = "10.0.1.0/24"
  private_cidr_block2 = "10.0.2.0/24"
  private_cidr_block3 = "10.0.3.0/24"
  public_cidr_block1  = "10.0.101.0/24"
  public_cidr_block2  = "10.0.102.0/24"
  public_cidr_block3  = "10.0.103.0/24"
  instance_type       = "t2.micro"
  instance_class      = "db.t2.small"
  multi_az            = "true"
  username            = "rootuser"             #Database username
  name                = "admin"                #Database name
  password            = "oshikoya"             #Database password
  engine              = "mysql"
  engine_version      = "5.7"
  db_p_name1          = "rds-pg"
  db_p_name2          = "character_set_server"
  db_p_name3          = "character_set_client"
  allocated_storage   = 20
  publicly_accessible = true

  tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created-by  = "John Oshikoya"
  }

  tags2 = {
    Name = "wordpress"
  }

  tags3 = {
    Name = "db"
  }
