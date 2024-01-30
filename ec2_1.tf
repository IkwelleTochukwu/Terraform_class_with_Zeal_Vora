provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "demo_ec2" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"

    tags = {
        name = "ec2_instance_demo"
    }
}

provider "azurem" {}