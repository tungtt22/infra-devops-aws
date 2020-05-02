variable "ami" {
  type        = string
  description = "AMI ID"
}

variable "project_name" {
  type        = string
  default     = ""
  description = "Project Name or System Name"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "key_pair" {
  type        = string
  description = "SSH key using for ssh remote connection"
}

variable "ip_address" {
  type        = string
  description = "IP address attach to Network Interface"
}

variable "squid_username" {
  type        = string
  description = "Username using for login Squid Proxy"
}

variable "squid_password" {
  type        = string
  description = "Password using for login Squid Proxy"
}

variable "squid_port" {
  type        = string
  description = "Port using for access Squid Proxy"
}

variable "nginx_public_ip" {
  type        = string
  description = "Elastic IP address of the Nginx"
}

variable "nginx_private_ip" {
  type        = string
  description = "Private IP address of the Nginx"
}

variable "application1_subnet_cidr" {
  type        = string
  description = "Applicatioin 1 subnet CIDR"
}

variable "application2_subnet_cidr" {
  type        = string
  description = "Applicatioin 2 subnet CIDR"
}

variable "agent1_subnet_cidr" {
  type        = string
  description = "Agent 2 subnet CIDR"
}

variable "agent2_subnet_cidr" {
  type        = string
  description = "Agent 2 subnet CIDR"
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public subnet CIDR"
}

variable "bastion_private_ip" {
  type        = string
  description = "Private IP address of the Bastion"
}

variable "subnet_id" {
  type        = string
  description = "Private IP address of the Bastion"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "bastion_host" {
  type        = string
  description = "Bastion Host IP for install jenkins in Local network"
}

variable "bastion_host_key" {
  type        = string
  description = "Bastion host key"
}

variable "bastion_private_key" {
  type        = string
  description = "Bastion private key"
}

variable "private_key" {
  type        = string
  description = "Private key using for ssh to jenkins server"
}

variable "remote_user" {
  type        = string
  description = "User using for remote to instance"
}
