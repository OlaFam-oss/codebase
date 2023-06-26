resource "aws_instance" "ubuntu_linux" {
  ami               = var.ubuntu_linux_ami
  instance_type     = var.ec2_instance_type
  key_name          = var.ec2_key_name
  security_groups   = [aws_security_group.ec2_sg.name]
  availability_zone = "eu-west-1b"
  user_data         = <<-EOF
    #!/bin/bash
    apt update
    apt install maven git openjdk-8-jdk -y
   EOF

  tags = {
    "Name" = "ubuntu_linux"
  }

}
resource "aws_instance" "amazon_linux" {
  ami               = var.ec2_ami
  instance_type     = var.ec2_instance_type
  key_name          = var.ec2_key_name
  security_groups   = [aws_security_group.ec2_sg.name]
  availability_zone = "eu-west-1a"
  count             = var.ec2_ami
  user_data         = <<-EOF
    #!/bin/bash
    yum install java-1.8.0-amazon-corretto-devel.x86_64 git maven -y
     EOF
  tags = {
    Name = "amazon_linux"
  }
}