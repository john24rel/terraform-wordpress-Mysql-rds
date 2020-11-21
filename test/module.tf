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