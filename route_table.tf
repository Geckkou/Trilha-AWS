# Criando o route table para o internet gateway

resource "aws_route_table" "route_table" {
  depends_on = [
    aws_vpc.vpc,
    aws_internet_gateway.internet_gateway
  ]

  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "route-table"
  } 
}

# Associando a route table na subnet publica
resource "aws_route_table_association" "associate_routetable_to_public_subnet" {
  depends_on = [
    aws_subnet.public_subnet,
    aws_route_table.route_table
  ]

  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table.id
}