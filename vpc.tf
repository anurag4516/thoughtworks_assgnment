resource "aws_vpc" "lab_vpc" {
  cidr_block = "10.100.0.0/24"
  depends_on = aws_instance.my_ec2_instance
}