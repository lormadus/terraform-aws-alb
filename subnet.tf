resource "aws_subnet" "user30-subnet1" {
  vpc_id            = aws_vpc.user30-vpc.id
  availability_zone = "ap-southeast-1a"
  cidr_block        = "30.0.1.0/24"

  tags  = {
    Name = "user30-subnet1"
  }
}

resource "aws_subnet" "user30-subnet2" {
  vpc_id            = aws_vpc.user30-vpc.id
  availability_zone = "ap-southeast-1b"
  cidr_block        = "30.0.2.0/24"

  tags  = {
    Name = "user30-subnet2"
  }
}