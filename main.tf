resource "aws_autoscaling_group" "example" {
  name = "your-asgname"
  desired_capacity     = 1  # Updated desired capacity
  max_size             = 1
  min_size             = 1
  health_check_type    = "EC2"
  health_check_grace_period = 300


  launch_template {
    id = "lt-0411b9adb4bc92661"
    version = "$Latest"
  }

  vpc_zone_identifier = ["subnet-0f4c1defbfc3bb126"]  # Specify your subnet IDs

  tag {
    key                 = "Name"
    value               = "your-instance-name-you-show"
    propagate_at_launch = true
  }
}
