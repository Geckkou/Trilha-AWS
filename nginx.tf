#Criando o security group para nginx

resource "aws_security_group" "sg_nginx" {
  depends_on = [
    aws_vpc.vpc
  ]

  name        = "sg nginx"
  description = "Allow http and https inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    cidr_blocks = ["179.55.111.58/32"]
    description = "Allow TCP"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["179.55.111.58/32"]
    description = "Allow TCP"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow outbound"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}