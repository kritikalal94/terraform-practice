provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "kritika-server-1" {
  ami           = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "Kritika-dev-instance"
    Env  = "Dev"
  }
}

output "PUBLIC_IP" {
  value = aws_instance.kritika-server-1.public_ip
}

output "PRIVATE_IP" {
  value = aws_instance.kritika-server-1.private_ip
}
