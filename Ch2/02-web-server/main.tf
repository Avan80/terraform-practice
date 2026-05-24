resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello from $(hostname -f)" > index.html
              python3 -m http.server 8080 &
              EOF

  tags = {
    Name = "web-server"
  }
}
