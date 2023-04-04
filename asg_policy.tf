resource "aws_autoscaling_group" "asg" {
  name = "${aws_launch_configuration.launch_configuration.name}-asg"

  min_size = 1
  desired_capacity = 2
  max_size = 3

  health_check_type = "ELB"
  load_balancers = [ "aws_elb.elb.id" ]
}
