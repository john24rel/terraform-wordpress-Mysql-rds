# resource "aws_rds_cluster" "test" {
#   cluster_identifier      = "database-1"
#   engine                  = "aurora-mysql"
#   engine_version          = "5.7.mysql_aurora.2.03.2"
#   db_subnet_group_name    = "${aws_db_subnet_group.db.name}" 
#   database_name           = "${var.database_name}"
#   master_username         = "${var.master_username}"
#   master_password         = "${var.master_password}"
#   backup_retention_period = 5
#   preferred_backup_window = "07:00-09:00"
# }
# module
# database_name =  "wordpress"
#   master_username = "admin"
#   master_password = "oshikoya"
#   engine         = "mysql"
#   engine_version = "5.7"
# variable
# variable "database_name"     {}
# variable "master_username"   {}
# variable  "master_password"  {}
# variable "password"    {}

