# Define EIP for NAT gateway
resource "aws_eip" "nat" {
  vpc      = true

  tags = {
    Name = "NAT Gateway IP"
  }
}