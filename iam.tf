resource "aws_iam_instance_profile" "ecs_profile" {
  name = "tf-created-AmazonECSContainerProfile-${var.name}"
  role = "${aws_iam_role.ecs-role.name}"
}

resource "aws_iam_role" "ecs-role" {
  name = "tf-AmazonECSInstanceRole-${var.name}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
      "Service": ["ecs.amazonaws.com", "ec2.amazonaws.com"]

    },
    "Effect": "Allow",
    "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "attach-ecs" {
  name       = "ecs-attachment"
  roles      = ["${aws_iam_role.ecs-role.name}"]

  # AWS's Managed - Default policy for the Amazon EC2 Role for Amazon EC2 Container Service.
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}
