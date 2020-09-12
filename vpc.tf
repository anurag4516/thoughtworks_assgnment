resource "aws_vpc" "lab_vpc" {
  cidr_block = var.cidr_of_vpc
  tags = {
    Name = var.projecttag
  }


}

