resource "aws_alb" "my_new_elb" {
  name               = "my-new-elb"
  internal           = false
  security_groups    = [aws_security_group.lb.id]
  subnets            = [aws_subnet.public.id]
  enable_deletion_protection = false
}

resource "aws_alb_listener" "http" {
  load_balancer_arn = aws_alb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}

resource "aws_lb_target_group" "main" {
  name     = "my_new-tg"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}

resource "aws_alb_listener" "https" {
  load_balancer_arn = aws_alb.main.arn
  port              = 443
  protocol          = "HTTPS"

  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = aws_acm_certificate.main.arn

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}
