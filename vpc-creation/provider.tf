provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA5PFCKEU4EBLMGBGC"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
    location = "north-virginia"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "subnet1"
  }
}