terraform {
  backend "s3" {
    bucket = "vijay1996"
    key    = "roboshop/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}