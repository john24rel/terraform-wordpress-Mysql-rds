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
variable "publicly_accessible" {}

variable "tags" {
  type = "map"
}

variable "tags2" {
  type = "map"
}

variable "tags3" {
  type = "map"
}
