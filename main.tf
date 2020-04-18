terraform {
    backend "s3" {
        bucket = "cb-microservice-aws-ec2-docker-setup"
        key     = "ec2-infra"
        region  = "eu-west-2"
    }
    required_version = ">= 0.12.4"
}

provider "aws" {
    region = "eu-west-2"
}

module "roles" {
    source = "./roles"
}

module "ec2" {
  source                = "./ec2"

  instance_type         = var.instance_type
  key_name              = var.key_name
  iam_instance_profile  = module.roles.iam_instance_profile
}
