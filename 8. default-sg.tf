# VPC내 기본 Security Group 생성 (VPC 전체에 적용할 대표적인 SG, 세부적인 트래픽 제어는 별도 Security Group으로) 
resource "aws_default_security_group" "user30-default-sg" {
  vpc_id = aws_vpc.user30-vpc.id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "user30-default-sg"
  }
}
