# Microservice - AWS - EC2 - Docker - Setup

Provisioning AWS EC2 with Docker installed.

The idea is that an AWS custom built AMI with Docker installed would be created by Packer in the microservice-ami project which is then used to create the AWS EC2 instances from it. This is achieved by IAC tool either Terraform or Cloudformation:

![microservice-aws-ec2-docker-setup](https://images-for-github-colinbut.s3.eu-west-2.amazonaws.com/microservice-aws-demo/microservice-aws-ec2-docker-setup.png)
