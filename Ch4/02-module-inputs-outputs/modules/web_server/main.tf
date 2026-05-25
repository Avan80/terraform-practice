resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type

  tags = {
    Name = var.name
  }
}

resource "aws_security_group" "web_s" {
  name = "${var.name}-sg"

  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-sg"
  }
}
