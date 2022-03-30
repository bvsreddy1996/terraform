resource "aws_instance" "web" {
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.SG_ID]

  tags = {
    Name = "web"
  }
}

variable "SG_ID" {}