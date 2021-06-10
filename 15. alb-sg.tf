# ALB에 적용한 보안그룹 생성
resource "aws_security_group" "user30-alb-sg" {
  name        = "user30-alb-sg"
  description = "open HTTP port for ALB"

  vpc_id = aws_vpc.user30-vpc.id

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
    Name = "user30-alb-sg"
  }
}
