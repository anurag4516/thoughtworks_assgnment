resource "aws_subnet" "lab_public" {
  cidr_block = var.cidr_of_public_subnet
  vpc_id     = aws_vpc.lab_vpc.id
  tags = {
    Name = var.projecttag
  }


}

resource "aws_route_table_association" "topublic" {
  subnet_id      = aws_subnet.lab_public.id
  route_table_id = aws_route_table.lab_routetable_public.id

}


