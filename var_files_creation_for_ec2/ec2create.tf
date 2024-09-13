resource "aws_instance" "terraform_instance" {
  ami = var.ami_id  # us-east-1
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_port.id]
  tags = {
    Name = "terraform_server"
        }
  }


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
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allowing everyone 
    ipv6_cidr_blocks = ["::/0"]
    }
    tags = var.tags
  }
  