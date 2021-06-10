resource "aws_alb" "user30-alb" {
  name            = "user30-alb"
  internal        = false
  security_groups = [aws_security_group.user30-alb-sg.id]
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
