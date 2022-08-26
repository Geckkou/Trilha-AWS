# Criando Chave pem com algoritmo RSA

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#Criando um par de chaves 

resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.private_key.public_key_openssh

  depends_on = [
    tls_private_key.private_key,
  ]
}

# Salvar a chave o path 

resource "local_file" "save_key" {
  content  = tls_private_key.private_key.private_key_pem
  filename = "${var.base_path}${var.key_name}.pem"
}
