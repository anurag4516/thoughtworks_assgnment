variable "region_of_deployment" {
  type    = string
  default = "us-east-2"
}
variable "projecttag" {
  type    = string
  default = "thoughtworks"
}


variable "cidr_of_vpc" {
  type    = string
  default = "10.100.0.0/16"
}


variable "cidr_of_public_subnet" {
  type    = string
  default = "10.100.0.0/24"
}

variable "aws_access_key" {
  type    = string
  default = "AKIA26457DXPZWFWXOAG"
}

variable "aws_secret_key" {
  type    = string
  default = "g9aTwigiO9jvME6pmKaIUKTJStnfW95lqym7DJW0"
}

variable "ec2_ami" {
  type    = string
  default = "ami-0a54aef4ef3b5f881"
}
variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ec2_key_name" {
  type    = string
  default = "vpc_peering"
}

variable "ssh_key_path" {
  type    = string
  default = "/home/anurgupt/Desktop/ansible/vpc_peering.pem"
}

