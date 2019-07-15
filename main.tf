resource "aws_autoscaling_schedule" "work" {
  count = "${length(var.schedules)}"

  scheduled_action_name   = "${var.env}-${lookup(var.schedules[count.index], "name")}"
  //  count = "${var.env  == "bmprod" ? 0 : 1}"
  min_size                = "${lookup(var.schedules[count.index], "min")}"
  max_size                = "${lookup(var.schedules[count.index], "max")}"
  desired_capacity        = "${lookup(var.schedules[count.index], "desired")}"
  start_time              = "${lookup(var.schedules[count.index], "start")}"
  recurrence              = "${lookup(var.schedules[count.index], "recurrence")}"

  autoscaling_group_name  = "${var.autoscaling_name}"
}