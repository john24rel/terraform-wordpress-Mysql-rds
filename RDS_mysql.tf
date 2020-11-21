resource "aws_db_instance" "db" {
  engine                              = "${var.engine}"
  engine_version                      = "${var.engine_version}"
  identifier                          = "my-test-database"
  parameter_group_name                = "${aws_db_parameter_group.default.name}"
  vpc_security_group_ids              = ["${aws_security_group.mysql.id}"]
  allocated_storage                   = "${var.allocated_storage}"
  port                                = 3306
  multi_az                            = true
  skip_final_snapshot                 = true
  storage_encrypted                   = true
  apply_immediately                   = true
  storage_type                        = "gp2"
  iam_database_authentication_enabled = true
  db_subnet_group_name                = "${aws_db_subnet_group.db.name}"
  instance_class                      = "${var.instance_class}"
  name                                = "${var.name}"
  username                            = "${var.username}"
  password                            = "${var.password}"
  tags                                = "${var.tags3}"
}
