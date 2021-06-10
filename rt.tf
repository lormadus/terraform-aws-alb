resource "aws_route_table" "user30-rt" {
  vpc_id = aws_vpc.user30-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.user30-igw.id
  }

  tags = {
    Name = "user30-rt"
  }
}