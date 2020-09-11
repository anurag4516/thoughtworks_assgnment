resource "aws_subnet" "lab_public" {
  cidr_block = "10.100.1.0/24"
  vpc_id     = aws_vpc.lab_vpc.id


}
resource "aws_subnet" "lab_private" {
  cidr_block = "10.100.2.0/24"
  vpc_id     = aws_vpc.lab_vpc.id
}

resource "aws_route_table_association" "topublic" {
  subnet_id      = aws_subnet.lab_public.id
  route_table_id = aws_route_table.lab_routetable_public.id
}

resource "aws_route_table_association" "topublic" {
  subnet_id      = aws_subnet.lab_private.id
  route_table_id = aws_route_table.lab_routetable_public_private.id
}