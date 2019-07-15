variable "region" {
  description = "aws region"
}

variable "env" {
  description = "Environment name"
}

variable "autoscaling_name" {
  description = "Name"
}

variable "schedules" {
  type = "list"
  default = []
  description = "List of maps with schedules"
}

//variable "launch_configuration_name" {
//  description = "Launch configuration name"
//}