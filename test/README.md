##CREATE A FILE##
##EXAMPLE main.tf##
##CHANGE THE source to the Provision Instructions BELOW##
##EXAMPLE source = "john24re/test/test"
```
module "VPC" {
  source            = "../"
  region            = "${var.region}"
  cidr_block        = "${var.cidr_block}"
private_cidr_block1 = "${var.private_cidr_block1}"
private_cidr_block2 = "${var.private_cidr_block2}"
private_cidr_block3 = "${var.private_cidr_block3}"
public_cidr_block1  = "${var.public_cidr_block1}"
public_cidr_block2  = "${var.public_cidr_block2}"
public_cidr_block3  = "${var.public_cidr_block3}"
instance_type       = "${var.instance_type}"
instance_class      = "${var.instance_class}"
multi_az            = "${var.multi_az}"
username            = "${var.username}"             #Database username
name                = "${var.name}"        #Database name
password            = "${var.password}"            #Database password
engine              = "${var.engine}"
engine_version      = "${var.engine_version}"
db_p_name1          = "${var.db_p_name1}"
db_p_name2          = "${var.db_p_name2}"
db_p_name3          = "${var.db_p_name3}"
allocated_storage   = "${var.allocated_storage}"
tags                = "${var.tags}"
tags2               = "${var.tags2}"
tags3               = "${var.tags3}"
}
###tags - (Required) Resources use.
```
##CREATE A FILE NAME variable.tf##
##COPY THE TEXT BELOW INTO THE FILE##
```
variable "cidr_block" {}
variable "region" {}
variable "private_cidr_block1" {}
variable "private_cidr_block2" {}
variable "private_cidr_block3" {}
variable "public_cidr_block1" {}
variable "public_cidr_block2" {}
variable "public_cidr_block3" {}
variable "instance_type" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "name" {}
variable "engine" {}
variable "engine_version" {}
variable "allocated_storage" {}
variable "multi_az" {}
variable "db_p_name1" {}
variable "db_p_name2" {}
variable "db_p_name3" {}
variable "tags" {
  type = "map"
}
variable "tags2" {
  type = "map"
}
variable "tags3" {
  type = "map"
}
```
##REGIONS
```
###Regions###
**OHIO**
**region = "us-east-2"**
**VIRGINIA**
**region = "us-east-1"**

```
##Create a folder name region##
##Create a file in the region folder##
#example ohio.tfvars as a file & copy the text below#
```
  region  = {input region name}

  
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
```

##COMMANDS TO RUN WHEN FILES ARE CREATED##

```
**modules to run**
terraform init -var-file regions/virginia.tfvars 
terraform apply -var-file regions/virginia.tfvars
terraform init -var-file regions/ohio.tfvars
terraform apply -var-file regions/ohio.tfvars
```
##OUTPUTS TO BE SHOWED##
```
output "vpc_id" {
  value = "${module.VPC.vpc_id}"
}

output "private_subnet1" {
  value = "${module.VPC.private_subnet1}"
}

output "private_subnet2" {
  value = "${module.VPC.private_subnet2}"
}

output "private_subnet3" {
  value = "${module.VPC.private_subnet3}"
}

output "public_subnet1" {
  value = "${module.VPC.private_subnet1}"
}

output "public_subnet2" {
  value = "${module.VPC.private_subnet2}"
}

output "public_subnet3" {
  value = "${module.VPC.private_subnet3}"
}

output "tags" {
  value = "${module.VPC.tags}"
}

output "tags2" {
  value = "${module.VPC.tags2}"
}

output "tags3" {
  value = "${module.VPC.tags3}"
}

output "CENTOS_AMI" {
  value = "${module.VPC.CENTOS_AMI}"
}

output "UBUNTU_AMI" {
  value = "${module.VPC.UBUNTU_AMI}"
}

output "pub_az" {
  value = "${module.VPC.pub_az}"
}

output "priv_az" {
  value = "${module.VPC.priv_az}"
}
```
