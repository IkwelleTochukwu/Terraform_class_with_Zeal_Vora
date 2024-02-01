provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "Elastic_ip" {
  domain = "vpc"
}

resource "aws_security_group" "SG_EiP" {
  name = "SecurityGroup"
  description = "Use Eip attribute"

  ingress = {
    description = "TLS from VPC"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${aws_eip.Elastic_ip.public_ip}"/32]
  }
}