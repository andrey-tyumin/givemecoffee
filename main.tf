provider "aws" {
    region = "us-east-2"
    }

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "hw" {
  ami           = "ami-00399ec92321828f5"
  instance_type = t2.micro
  count = 2
  associate_public_ip_address = "true"

  tags = {
    Name = "HW72"
  }
}


data "aws_region" "current" {}

data "aws_caller_identity" "current" {}


