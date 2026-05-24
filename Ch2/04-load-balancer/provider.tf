provider "aws" {
  region = var.aws_region

  endpoints {
    ec2 = var.aws_endpoint
    sts = var.aws_endpoint
  }
}
