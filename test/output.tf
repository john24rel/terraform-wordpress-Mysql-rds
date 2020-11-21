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
    value = "${module.VPC.public_subnet1}"
}

output "public_subnet2" {
    value = "${module.VPC.public_subnet2}"
}

output "public_subnet3" {
    value = "${module.VPC.public_subnet3}"

}

output "instance_az" {
    value = "${module.VPC.instance_az}"
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