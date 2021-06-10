# EC2 인스턴스에 개별적으로 적용할 보안그룹(SG)
resource "aws_security_group" "user30-sg" {
  name        = "user30-sg"
  description = "open ssh port for bastion"
  vpc_id = aws_vpc.user30-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # 보안을 위해서 22번 포트로의 접속은 사무실, 혹은 집에서만 가능하도록 수정 필요
    # 아래는 OO 사무실 IP
    cidr_blocks = ["211.**.**.5/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "user30-sg"
  }
}
