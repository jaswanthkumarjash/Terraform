resource "aws_instance" "terraform-instances" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.terraform-sgs.id]

  tags = {
    Name = "terraform"
  }
}

resource "aws_security_group" "terraform-sgs" {
  name = "tf-allow-all"

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = {
    Name = "allow-all"
  }
}