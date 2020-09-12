resource "aws_internet_gateway" "lab_gateway" {
  vpc_id = aws_vpc.lab_vpc.id
  tags = {
    Name = var.projecttag
  }

}

