variable  "instances" {
  type        = map
}

variable "domain_name" {
  default = "kvsubrahmanyam.online"
}

variable "zone_id" {
  default = "Z056198610ROIWSWYJHQH"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
    }
}

variable "tags" {
    type = map
}

variable "environment" {
}