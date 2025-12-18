variable "instances" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "domain_name" {
    default = "jaswanthjash12.shop"
}

variable "hosted_zone_id" {
    default = "Z01808731CH4W38TLY466"
}