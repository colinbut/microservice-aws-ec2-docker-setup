output "iam_instance_profile" {
    value = aws_iam_instance_profile.ec2_ecr_instance_profile.name
}