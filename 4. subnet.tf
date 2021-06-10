# Auto Scaling을 하는 경우, EC2 Intance 들이 서로 다른 가용영역(Availability Zone)에 설치 되어야
# 하기 때문에 Subnet도 각각 다른 AZ에 생성 필요

resource "aws_subnet" "user30-subnet1" {
  vpc_id            = aws_vpc.user30-vpc.id
  # AZ 는 AWS Management Console -> VPC -> VPC 대시보드 -> 설정에서도 확인 가능
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
