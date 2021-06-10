# EC2 Intance들이 외부 통신을 하기 위해 Routing Table 설정

resource "aws_route_table" "user30-rt" {
  vpc_id = aws_vpc.user30-vpc.id

  # IGW로 나가는 라우팅 설정이 없으면 서버는 생성되지만 외부 통신이 안됨
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.user30-igw.id
  }

  tags = {
    Name = "user30-rt"
  }
}
