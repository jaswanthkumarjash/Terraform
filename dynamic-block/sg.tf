resource "aws_security_group" "terraform-sgs" {
  name = "tf-allow-all"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content {
      from_port        = 0
      to_port          = 0
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "allow-all"
  }
}