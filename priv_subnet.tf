data "aws_availability_zones" "private" {
  state = "available"
}

resource "aws_subnet" "subnet1" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.private.names[0]}"
  cidr_block        = "${var.private_cidr_block1}"
  tags              = "${var.tags}"
}

resource "aws_subnet" "subnet2" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.private.names[1]}"
  cidr_block        = "${var.private_cidr_block2}"
  tags              = "${var.tags}"
}

resource "aws_subnet" "subnet3" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.private.names[2]}"
  cidr_block        = "${var.private_cidr_block3}"
  tags              = "${var.tags}"
}
