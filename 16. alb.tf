# 부하 분산을 위해 Application Load Balancer 생성 
resource "aws_alb" "user30-alb" {
  name            = "user30-alb"
  internal        = false
  security_groups = [aws_security_group.user30-alb-sg.id]
  # 고가용성(HA)을 위해 복수의 서브넷 지정 필요
  subnets         = [
    aws_subnet.user30-subnet1.id,
    aws_subnet.user30-subnet2.id
  ]

  access_logs {
    bucket  = aws_s3_bucket.user30-s3.id
    prefix  = "frontend-alb"
    enabled = true
  }

  tags = {
    Name = "user30-alb"
  }

  lifecycle { create_before_destroy = true }
}
