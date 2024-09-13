variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
    description = "aws instance_id"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "instance type we can mention here as variable"
}

variable "tags" {
    type = map
    default = {
        Name = "devops-practice"
    }
}