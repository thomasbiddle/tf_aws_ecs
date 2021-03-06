variable "name_prefix" {
  default = ""
}

variable "ami" {
  default = ""
}

variable "ami_version" {
  default = "*"
}

variable "user_data" {
  default = ""
}

variable "docker_storage_size" {
  default     = "22"
  description = "EBS Volume size in Gib that the ECS Instance uses for Docker images and metadata "
}

variable "dockerhub_email" {
  default     = ""
  description = "Email Address used to authenticate to dockerhub. http://docs.aws.amazon.com/AmazonECS/latest/developerguide/private-auth.html"
}

variable "dockerhub_token" {
  default     = ""
  description = "Auth Token used for dockerhub. http://docs.aws.amazon.com/AmazonECS/latest/developerguide/private-auth.html"
}

variable "extra_tags" {
  default = []
}

variable "heartbeat_timeout" {
  description = "Heartbeat Timeout setting for how long it takes for the graceful shutodwn hook takes to timeout. This is useful when deploying clustered applications like consul that benifit from having a deploy between autoscaling create/destroy actions. Defaults to 180"
  default     = "180"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS Instance type, if you change, make sure it is compatible with AMI, not all AMIs allow all instance types "
}

variable "key_name" {
  default     = ""
  description = "SSH key name in your AWS account for AWS instances."
}

variable "name" {
  description = "AWS ECS Cluster Name"
}

variable "region" {
  default     = "us-east-1"
  description = "The region of AWS, for AMI lookups."
}

variable "security_group_ids" {
  type        = "list"
  description = "A list of Security group IDs to apply to the launch configuration"
  default     = []
}

variable "subnet_id" {
  type        = "list"
  description = "The AWS Subnet ID in which you want to delpoy your instances"
}

variable "tagName" {
  default     = "ECS Node"
  description = "Name tag for the servers"
}

variable "vpc_id" {
  description = "The AWS VPC ID which you want to deploy your instances"
}

variable "associate_public_ip_address" {
  default = false
}

variable "min_instances" {
  default = 1
}

variable "max_instances"{
  default = 10
}
