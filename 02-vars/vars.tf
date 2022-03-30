#variable "sample" {}

variable "sample" {
  default = "NewHellow"
}


# String Data type
variable "sample1" {
  default = "Hello World"
}

## Single Quotes are not supported in Terraform

# Number data type
variable "sample2" {
  default = 100
}

# Boolean Data type
variable "sample3" {
  default = true
}