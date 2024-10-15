resource "aws_security_group" "main" {
    name = 
    description = "allow TLS inbound traffic and all outbound traffic"
    vpc_id  = aws_vpc_main.id


tags = {
    Name = "allow_tls"
   }
}