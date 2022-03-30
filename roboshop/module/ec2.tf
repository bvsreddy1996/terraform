#resource "aws_instance" "ec2" {
#  ami                    = "ami-0bb6af715826253bf"
#  instance_type          = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.allow_app.id]
#
#  tags = {
#    Name = var.COMPONENT
#  }
#}

resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]
  wait_for_fulfillment   = true

  tags = {
    Name = var.COMPONENT
  }

  provisioner "remote-exec" {
    connection {
      host     = aws_spot_instance_request.cheap_worker.private_ip
      user     = "root"
      password = "DevOps321"
    }
    inline = [
      "ansible-pull -U https://github.com/vijay1996/ansible roboshop-pull.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev"
    ]
  }
}


resource "aws_ec2_tag" "ec2-name-tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "Name"
  value       = var.COMPONENT
}