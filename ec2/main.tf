resource "aws_instance" "ec2_instance" {
    ami                         = "ami-00a1270ce1e007c27"
    count                       = 2
    instance_type               = "${var.instance_type}"
    key_name                    = "${var.key_name}"
    associate_public_ip_address = true
    vpc_security_group_ids      = ["sg-0f89322a79aa4a404"] # ensure security group has SSH access
    
    tags = {
        Name          = "Microservice-Server-Docker"
        ProvisionedBy = "Terraform"
    }
    
}
