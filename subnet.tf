#Criando subnets pública 

resource "aws_subnet" "public_subnet" {
  depends_on = [
    aws_vpc.vpc
  ]

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.0.0/24"

  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet"
  }

  map_public_ip_on_launch = true
}
