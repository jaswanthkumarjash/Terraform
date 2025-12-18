variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "sg_name" {
    type = string
    default = "allow-all"
    description = "Security Group Name to attach with ec2 instance"
}

variable "ec2-tags" {
    type = map
    default = {
        Name = "terraform-demo"
        terraform = "true"
        Project = "Roboshop"
    }
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    default = "-1"
}

variable "console_input" {
    
}