# Internet Gateway와 VPC 연결 필요

resource "aws_internet_gateway" "user30-igw" {
  vpc_id = aws_vpc.user30-vpc.id

  tags = {
    Name = "user30-igw"
  }
}
