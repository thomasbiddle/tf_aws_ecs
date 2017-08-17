output "cluster_id" {
  value = "${aws_ecs_cluster.cluster.id}"
}

output "autoscaling_group" {
  value = {
    id   = "${aws_autoscaling_group.ecs.id}"
    name = "${aws_autoscaling_group.ecs.name}"
    arn  = "${aws_autoscaling_group.ecs.arn}"
  }
}

output "ecs_security_group" {
  value = "${aws_security_group.ecs.id}"
}

output "ecs_iam_role_arn" {
  value = ${aws_iam_role.ecs-role.arn}"
}
