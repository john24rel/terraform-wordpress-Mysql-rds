output "vpc_id" {
  value = "aws_vpc.main.id"
}

output "private_subnet1" {
  value = "aws_subnet.subnet1.id"
}

output "private_subnet2" {
  value = "aws_subnet.subnet2.id"
}

output "private_subnet3" {
  value = "aws_subnet.subnet3.id"
}

output "public_subnet1" {
  value = "aws_subnet.subnet101.id"
}

output "public_subnet2" {
  value = "aws_subnet.subnet102.id"
}

output "public_subnet3" {
  value = "aws_subnet.subnet103.id"
}

output "instance_az" {
  value = ["${var.region}*"]
}

output "tags" {
  value = "${var.tags}"
}

output "tags2" {
  value = "${var.tags2}"
}

output "tags3" {
  value = "${var.tags3}"
}

output "UBUNTU_AMI" {
  value = "${data.aws_ami.ubuntu.id}"
}

output "pub_az" {
  value = "${data.aws_availability_zones.public.names}"
}

output "priv_az" {
  value = "${data.aws_availability_zones.private.names}"
}

output "CENTOS_AMI" {
  value = "${data.aws_ami.centos.id}"
}
