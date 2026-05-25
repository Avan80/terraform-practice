module "web_server" {
  source = "./modules/web_server"

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  name          = "web-server-versioned"
  http_port     = 8080
}
