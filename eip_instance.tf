resource "aws_eip" "elastic_ip" {
  vpc = true
}

resource "aws_eip_association" "eip_association" {
  instance_id = aws_instance.centos.id
  allocation_id = aws_eip.elastic_ip.id
}