variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}
variable "common_tags"{
    type = map
    default = {
        Project = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "zone_id"{
    default = "Z056198610ROIWSWYJHQH"
}
variable "domain_name" {
    default = "kvsubrahmanyam.online"
}