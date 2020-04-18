data "aws_ami" "packer_built_docker_ami" {
    most_recent         = true
    owners              = ["self"]
    
    filter {
        name    = "name"
        values  = ["microservice-docker-ami-cb"]
    }
}

data "template_file" "instance_userdata" {
    template = "${file("${path.cwd}/ec2/instance-bootstrap.tpl")}"
}