resource "aws_instance" "wordpress" {
  ami                         = "${data.aws_ami.centos.id}"
  subnet_id                   = "${aws_subnet.subnet103.id}"
  vpc_security_group_ids      = ["${aws_security_group.vpc_task.id}"]
  associate_public_ip_address = true
  ebs_block_device = {
  device_name = "/dev/sda1"
  volume_size = 20
  delete_on_termination = true
  }

  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.class.key_name}"
  tags     = "${var.tags2}"
}
