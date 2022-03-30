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

variable "list" {
  default = ["Hello", 90, true]
}
# List can have values of different data types.

variable "map" {
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

## Variable values from tfvars
variable "new" {}

## Value from CLI
variable "cli" {}


variable "shell" {}