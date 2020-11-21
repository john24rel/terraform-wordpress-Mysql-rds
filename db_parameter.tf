resource "aws_db_parameter_group" "default" {
  name   = "${var.db_p_name1}"
  family = "mysql5.7"

  parameter {
    name  = "${var.db_p_name2}"
    value = "utf8"
  }

  parameter {
    name  = "${var.db_p_name3}"
    value = "utf8"
  }
}
