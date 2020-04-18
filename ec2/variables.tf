  
variable "instance_type" {
    type          = string
    description   = "The instance type of the EC2 instance to provision"
}

variable "key_name" {
    type          = string
    description   = "The name of the Key Pair used to authenticate into the provisioned EC2 instance"
}

variable "iam_instance_profile" {
    type = string
    description = "The IAM instance profile to attach to this EC2 instance"
}
