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

variable "common_tags" {
    type = map
    default = {
        terraform = "true"
        Project = "Roboshop"
        environment = "dev"
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

# variable "console_input" {
#     type = list(string)
#     description = "Enter the names you want to add: "
# }

variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}