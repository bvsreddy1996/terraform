#variable "sample" {}

variable "sample" {
  default = "NewHellow"
}

output "sample" {
  value = var.sample
}