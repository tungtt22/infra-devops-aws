# Define SSH key pair for our instances
resource "aws_key_pair" "bastion" {
  key_name = "devops-bastion"
  public_key = "${file("${var.key_path}")}"
}

resource "aws_key_pair" "default" {
  key_name = "devops-akawork"
  public_key = "${file("${var.key_path}")}"
}

# Define webserver inside the public subnet
resource "aws_instance" "bastion" {
   ami  = "${var.ami}"
   instance_type = "t2.nano"
   key_name = "${aws_key_pair.bastion.id}"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgbastion.id}"]
   associate_public_ip_address = true
   source_dest_check = false

  # provisioner "local-exec" {
  #   command = "sudo su"
  # }

  # provisioner "local-exec" {
  #   command = "sudo sed -i 's/#Port 22/Port 443/g' /etc/ssh/sshd_config"
  # }

  tags = {
    Name = "bastion"
  }
}

# Define NAT Instance Server inside the public subnet
resource "aws_instance" "nat_instance" {
   ami  = "${var.ami_nat}"
   instance_type = "t2.nano"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgnat.id}"]
   associate_public_ip_address = true
   source_dest_check = false

  tags = {
    Name = "DevOps-NAT"
  }
}

# Define Nexus Server inside the public subnet
resource "aws_instance" "nexus" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgnexus.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_nexus.sh")}"

  tags = {
    Name = "DevOps-Nexus"
  }
}

# Define Sonarqube Server inside the public subnet
resource "aws_instance" "sonarqube" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgsonar.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_sonar.sh")}"

  tags = {
    Name = "DevOps-Sonarqube"
  }
}

# Define Jenkins Server inside the public subnet
resource "aws_instance" "jenkins" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgjenkins.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_jenkins.sh")}"

  tags = {
    Name = "DevOps-Jenkins"
  }
}

# Define Jira Server inside the public subnet
resource "aws_instance" "jira" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgjira.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_jira.sh")}"

  tags = {
    Name = "DevOps-Jira"
  }
}

# Define Confluence Server inside the public subnet
resource "aws_instance" "confluence" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgconfluence.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_confluence.sh")}"

  tags = {
    Name = "DevOps-Confluence"
  }
}

# Define GitLab Server inside the public subnet
resource "aws_instance" "gitlab" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sggitlab.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_gitlab.sh")}"

  tags = {
    Name = "DevOps-GitLab"
  }
}

# Define NginX Server inside the public subnet
resource "aws_instance" "nginx" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgnginx.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_nginx.sh")}"

  tags = {
    Name = "DevOps-NginX"
  }
}

# Define OpenLDAP Server inside the public subnet
resource "aws_instance" "openldap" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.default.id}"
   subnet_id = "${aws_subnet.application1-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgopenldap.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  #  user_data = "${file("./scripts/install_openldap.sh")}"

  tags = {
    Name = "DevOps-OpenLDAP"
  }
}

# # Define database inside the private subnet
# resource "aws_instance" "db" {
#    ami  = "${var.ami}"
#    instance_type = "t2.micro"
#    key_name = "${aws_key_pair.default.id}"
#    subnet_id = "${aws_subnet.private-subnet.id}"
#    vpc_security_group_ids = ["${aws_security_group.sgdb.id}"]
#    source_dest_check = false

#   tags = {
#     Name = "database"
#   }
# }
