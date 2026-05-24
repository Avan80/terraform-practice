resource "aws_instance" "web_cluster" {
  count         = 3
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello from server $(hostname -f)" > index.html
              python3 -m http.server 8080 &
              EOF

  tags = {
    Name = "web-server-${count.index}"
  }
}

resource "aws_lb" "example" {
  name               = "example-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-12345678"]

  tags = {
    Name = "example-lb"
  }
}
