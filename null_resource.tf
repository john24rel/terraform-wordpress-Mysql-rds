resource "null_resource" "wordpress" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.wordpress.public_ip}"
    }

    inline = [
      "sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y",
      "sudo yum-config-manager --enable remi-php72",
      "sudo yum install httpd wget mysql php php-mysql unzip -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo wget https://wordpress.org/latest.zip",
      "sudo unzip latest.zip",
      "sudo rsync -a wordpress/ /var/www/html",
      "sudo rm -rf latest.zip* wordpress",
      "sudo chown -R apache:apache /var/www/html",
      "sudo setenforce 0",
      "sudo sed s/SELINUX=enforcing/SELINUX=disabled/g  /etc/sysconfig/selinux -i",
      "sudo systemctl restart httpd",
    ]
  }
}

# resource "null_resource" "db" {
#   triggers = {
#     always_run = "${timestamp()}"
#   }


#   provisioner "remote-exec" {
#     connection {
#       type        = "ssh"
#       user        = "centos"
#       private_key = "${file("~/.ssh/id_rsa")}"
#       host        = "${aws_instance.db.public_ip}"
#     }


#     inline = [
#       "sudo yum install mariadb-server mariadb -y",
#       "sudo systemctl start mariadb",
#!/bin/bash
# sudo yum install mariadb-server mariadb -y
# sudo systemctl start mariadb
# sudo systemctl enable mariadb
# printf “\n n\n y\n y\n y\n y\n” | mysql_secure_installation
# sudo mysql -e “CREATE DATABASE wordpress”
# sudo mysql -e “GRANT ALL PRIVILEGES ON wordpress.* TO wpuser@‘%’ IDENTIFIED BY ‘dbpass’”
# sudo systemctl restart mariadb
# sudo setenforce 0
#       "sudo systemctl enable mariadb",
#       "sudo setenforce 0",
#       "sudo sed s/SELINUX=enforcing/SELINUX=disabled/g  /etc/sysconfig/selinux -i",
#     ]
#   }
# }

