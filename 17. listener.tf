# 부하 분산을 위해 외부에서 들어오는 포트 지정 및 해당 트래픽을 처리할 대상그룹(Target Group)설정
resource "aws_alb_listener" "http" {
  load_balancer_arn	= aws_alb.user30-alb.arn
  port              	= "80"
  protocol          	= "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.user30-alb-tg.arn
    type             	= "forward"
  }
}
