resource "aws_instance" "my_ec2_instance" {
    ami = var.ec2_ami
    instance_type = var.ec2_instance_type
    subnet_id = aws_subnet.lab_public.id
    security_groups = [aws_security_group.lab_security_group.id]
    key_name = var.ec2_key_name
    associate_public_ip_address = true
connection {
    type = "ssh"
    user        = "ec2-user"
    private_key = "${file("${var.ssh_key_path}")}"

    host = "${self.public_ip}"
    agent = false
  }

  provisioner "remote-exec" {
    inline = ["sudo dnf -y install python36" ]
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.public_ip},' --private-key ${var.ssh_key_path} thoughtworks_role.yml"
  }


}
