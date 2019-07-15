region = "us-west-2"
env = "draft"

schedules = [
  {
    name = "work_start"
    start = "2018-07-31T14:00:00Z"
    recurrence  = "50 3 * * 1,2,3,4,5"
    max = 2
    min = 1
    desired = 1
  },
  {
    name = "work_end"
    start = "2018-08-01T00:00:00Z"
    recurrence  = "50 3 * * *"
    max = 0
    min = 0
    desired = 0
  }
]

autoscaling_name = "my-asg-backend"
