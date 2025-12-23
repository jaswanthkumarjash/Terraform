resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]

  tags = {
    Name = "terraform"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
  }

  provisioner "local-exec" {
    command = "echo Instance is destroyed"
    when = destroy
  }
}

resource "aws_security_group" "terraform-sg" {
  name = "tf-allow-all"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all"
  }
}