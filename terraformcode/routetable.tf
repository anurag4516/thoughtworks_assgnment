resource "aws_route_table" "lab_routetable_public" {

  vpc_id = aws_vpc.lab_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab_gateway.id
  }
  tags = {
    Name = var.projecttag
  }


}

