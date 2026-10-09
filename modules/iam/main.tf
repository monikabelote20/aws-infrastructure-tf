resource "aws_iam_role" "ecs_exec" {
  name = "ecs-task-execution-role"
  assume_role_policy = jsonencode({"Version": "2012-10-17", "Statement": []})
}
