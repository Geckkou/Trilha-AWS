#Criando o security group para nginx

resource "aws_security_group" "sg_nginx" {
  depends_on = [
    aws_vpc.vpc
  ]

  name        = "sg nginx"
  description = "Allow http and https inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow TCP"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow TCP"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

  ingress {
    cidr_blocks = [ "179.55.111.58/32" ]
    description = "Allow ssh"
    from_port = 22
    protocol = "tcp"
    to_port = 22
  } 

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow outbound"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}

#Criando instância ec2 CentOs 8 com nginx

resource "aws_instance" "centos" {
  depends_on = [
    aws_security_group.sg_nginx
  ]

  ami = var.amis["ubuntu-east-1"]
  instance_type = "t2.micro"
  key_name = var.key_name
  vpc_security_group_ids = ["${aws_security_group.sg_nginx.id}"]
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "Server CentOS 8"
  }
}