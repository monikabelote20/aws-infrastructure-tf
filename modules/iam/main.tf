resource "aws_iam_role" "ecs_exec" {
  name = "ecs-task-execution-role"
  description = "Least-privilege ECS execution"
}
