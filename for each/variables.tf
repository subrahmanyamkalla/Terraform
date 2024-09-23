variable "ami_id" {
    type = string
    default = "ami-0e86e20dae9224db8"
    description = "which ami id we are using here we can mentione here"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "here we can mention type of instance"
}

variable "aws_security_group" {
    type = string
    default = "new_sg2"
}
                    
variable "tags" {
    type = map
    default = {
        Name = "terraform"
        Project = "expense"
        Component = "backend"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "from_port" {
    type = number
    default = "22"
}

variable "to_port" {
    type = number
    default = "22"
}

variable "protocol" {
    type = string
    default = "tcp"
}
variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}