resource "aws_db_subnet_group" "db" {
  name = "main"

  subnet_ids = [
    "${aws_subnet.subnet101.id}",
    "${aws_subnet.subnet102.id}",
    "${aws_subnet.subnet103.id}",
  ]
}
