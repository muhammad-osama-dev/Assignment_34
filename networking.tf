# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet within the VPC
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

# Create an internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

# Attach the internet gateway to the VPC
resource "aws_vpc_attachment" "gw_attachment" {
  vpc_id       = aws_vpc.main.id
  internet_gateway_id = aws_internet_gateway.gw.id
}
