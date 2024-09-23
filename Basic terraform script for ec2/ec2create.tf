resource "aws_instance" "web" {
  ami           =  "ami-0e86e20dae9224db8"
  instance_type = "t2.nano"
  #vpc_security_group_ids = [aws_security_group.example.id]

}

resource "aws_security_group" "example" {
  name = "sg_new"
  # ... other configuration ...
}


