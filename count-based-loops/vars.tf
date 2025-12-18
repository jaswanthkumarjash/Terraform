variable "instances" {
    type = list(string)
    description = "Enter the server names you want to create in this format ['a', 'b'] : "
}

variable "domain_name" {
    default = "jaswanthjash12.shop"
}

variable "hosted_zone_id" {
    default = "Z01808731CH4W38TLY466"
}