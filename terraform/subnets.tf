# Define subnets in VPC
resource "aws_subnet" "public-subnet" {
  vpc_id            = "${aws_vpc.default.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "${var.public_subnet_cidr}"

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "application1-subnet" {
  vpc_id            = "${aws_vpc.default.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "${var.application1_subnet_cidr}"

  tags = {
    Name = "Application1 Subnet"
  }
}

resource "aws_subnet" "application2-subnet" {
  vpc_id            = "${aws_vpc.default.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "${var.application2_subnet_cidr}"

  tags = {
    Name = "Application2 Subnet"
  }
}

resource "aws_subnet" "private1-subnet" {
  vpc_id            = "${aws_vpc.default.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "${var.private1_subnet_cidr}"

  tags = {
    Name = "Private1 Subnet"
  }
}

resource "aws_subnet" "private2-subnet" {
  vpc_id            = "${aws_vpc.default.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "${var.private2_subnet_cidr}"

  tags = {
    Name = "Private2 Subnet"
  }
}