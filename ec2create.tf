resource "aws_security_group" "allow_ssh_port" {
    name = "allow_ssh"
    description = "allow port 22 for ssh access"
  # ... other configuration ...

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

    }  

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcps"
    cidr_blocks      = ["0.0.0.0/0"] #allowing everyone 
    ipv6_cidr_blocks = ["::/0"]
    }
}


resource "aws_vpc_endpoint" "my_endpoint" {
  # ... other configuration ...
}