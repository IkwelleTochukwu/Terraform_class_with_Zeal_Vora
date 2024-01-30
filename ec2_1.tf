provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQTVLCTWLD6U4YFVG"
  secret_key = "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"
}

resource "aws_instance" "demo_ec2" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"

    tags = {
        name = "ec2_instance_demo"
    }
}