resource "aws_instance" "my_ec2_instance" {
    ami = "ami-0e9089763828757e1"
    instance_type = "t2.micro" 
    subnet_id = aws_subnet.lab_public.id
    security_groups = [aws_security_group.lab_security_group.id]
    key_name = "terraform"
    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("terraform.pem")
  }
  provisioner "remote-exec" {
      inline = [
          // Install httpd
          "sudo install httpd"
      ]

  }
}