resource "aws_alb_target_group" "user30-alb-tg" {
  name     = "user30-alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.user30-vpc.id

  health_check {
    interval            = 30
    path                = "/"
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }

  tags = { Name = "User30 Target Group" }
}

resource "aws_alb_target_group_attachment" "tg-web1" {
  target_group_arn 	= aws_alb_target_group.user30-alb-tg.arn
  target_id        	= aws_instance.user30-web1.id
  port             	= 80
}

resource "aws_alb_target_group_attachment" "tg-web2" {
  target_group_arn 	= aws_alb_target_group.user30-alb-tg.arn
  target_id        	= aws_instance.user30-web2.id
  port             	= 80
}