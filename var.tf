variable "amis" {
  type = map(string)

  default = {
    "ubuntu-east-1" = "ami-0d6e9a57f6259ba3a"
  }
}

variable "key_name" {
  default = "aws-key"
}

variable "base_path" {
  default = "/home/vertigo-tecmobile/Programação/VsCode/terraform-codes/trilha-aws/"
}

