resource "aws_autoscaling_group" "ecs" {
  desired_capacity     = 1
  max_size             = 2
  min_size             = 1
  vpc_zone_identifier  = [aws_subnet.public1.id, aws_subnet.public2.id]

  launch_template {
    id      = aws_launch_template.ecs.id
    version = "$Latest"
  }
}

