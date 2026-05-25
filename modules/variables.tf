variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "name" {
  type = string
}

variable "http_port" {
  type    = number
  default = 80
}

variable "security_groups" {
  type    = list(string)
  default = []
}
