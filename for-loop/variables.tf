variable "instances" {
    type = list(string)
}

variable "hosted_zone_id" {
    default = "Z01808731CH4W38TLY466"
}

variable "domain_name" {
    default = "jaswanthjash12.shop"
}

output "op_ins" {
    value = aws_instance.terraform
}