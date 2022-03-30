provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "vijay1996"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}