data "aws_availability_zones" "public" {
  state = "available"
}

resource "aws_subnet" "subnet101" {
  vpc_id                  = "${aws_vpc.main.id}"
  availability_zone       = "${data.aws_availability_zones.public.names[0]}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block1}"
  tags                    = "${var.tags}"
}

resource "aws_subnet" "subnet102" {
  vpc_id                  = "${aws_vpc.main.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block2}"
  availability_zone       = "${data.aws_availability_zones.public.names[1]}"

  tags = "${var.tags}"
}

resource "aws_subnet" "subnet103" {
  vpc_id                  = "${aws_vpc.main.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block3}"
  availability_zone       = "${data.aws_availability_zones.public.names[2]}"
  tags                    = "${var.tags}"
}
