resource "aws_alb_listener" "http" {
  load_balancer_arn	= aws_alb.user30-alb.arn
  port              	= "80"
  protocol          	= "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.user30-alb-tg.arn
    type             	= "forward"
  }
}
