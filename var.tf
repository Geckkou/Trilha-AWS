variable "amis" {
  type = map(string)

  default = {
    "ubuntu-east-1" = "ami-03b6a1d995f5a5146.4"
  }
}

variable "key_name" {
  default = "aws-key"
}