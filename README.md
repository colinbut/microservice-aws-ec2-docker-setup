# Microservice - AWS - EC2 - Docker - Setup

Provisioning AWS EC2 with Docker installed.

The idea is that an AWS custom built AMI with Docker installed would be created by Packer in the [microservice-ami](http://github.com/colinbut/microservice-ami.git) project which is then used to create the AWS EC2 instances from it. This is achieved by a IAC tool - Terraform:

![microservice-aws-ec2-docker-setup](https://images-for-github-colinbut.s3.eu-west-2.amazonaws.com/microservice-aws-demo/microservice-aws-ec2-docker-setup.png)

## RoadMap

Adding support for AWS Cloudformation