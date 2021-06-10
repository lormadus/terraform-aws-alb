# 라우팅 테이블과 서브넷 연결 필요
# 서브넷에 EC2 인스턴스들이 생성 되더라도 패킷을 외부로 나가는 라우팅 경로가 없으면
# 인터넷 통신이 안됨
# 반드시 서브넷은 하나의 라우팅 테이블과 연결 필요

resource "aws_route_table_association" "rt_subnet1" {
  subnet_id      = aws_subnet.user30-subnet1.id
  route_table_id = aws_route_table.user30-rt.id
}

resource "aws_route_table_association" "rt_subnet2" {
  subnet_id      = aws_subnet.user30-subnet2.id
  route_table_id = aws_route_table.user30-rt.id
}
