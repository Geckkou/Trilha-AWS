# Creating the internet Gateway

resource "aws_internet_gateway" "internet_gateway" {
  depends_on = [
    aws_vpc.vpc
  ]

  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "Internet gateway"
  }
}