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

resource "aws_instance" "ec2_instance" {
    ami                         = data.aws_ami.packer_built_docker_ami.id
    count                       = 2
    instance_type               = var.instance_type
    key_name                    = var.key_name
    associate_public_ip_address = true
    vpc_security_group_ids      = ["sg-0f89322a79aa4a404"] # ensure security group has SSH access
    user_data                   = data.template_file.instance_userdata.template
    
    tags = {
        Name          = "Microservice-Server-Docker"
        ProvisionedBy = "Terraform"
    }
    
}
