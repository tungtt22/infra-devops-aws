# Region variable
variable "region" {
  description = "Region for the the system"
  default = "us-east-2"
}

######################################################
##                      VPC                         ##
######################################################

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.15.0.0/16"
}

# Define subnets
variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.15.1.0/24"
}

variable "application1_subnet_cidr" {
  description = "CIDR for the application1 subnet"
  default = "10.15.2.0/24"
}

variable "application2_subnet_cidr" {
  description = "CIDR for the application2 subnet"
  default = "10.15.3.0/24"
}

variable "private1_subnet_cidr" {
  description = "CIDR for the private1 subnet"
  default = "10.15.12.0/24"
}

variable "private2_subnet_cidr" {
  description = "CIDR for the private2 subnet"
  default = "10.15.13.0/24"
}

######################################################
##               Define AMI Templates               ##
######################################################

# Common AMI template using for almost instances
variable "ami" {
  description = "Amazon Linux 2 AMI "
  default = "ami-0ebbf2179e615c338"
}

# AMI template using for create NAT Instance
variable "ami_nat" {
  description = "Amazon Linux 2 AMI "
  default = "ami-00d1f8201864cc10c"
}

######################################################
##                    KEY PAIR                      ##
######################################################

variable "key_path" {
  description = "SSH Public Key path"
  default = "~/.ssh/id_rsa.pub"
}
