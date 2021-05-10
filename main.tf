terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.39.0"
    }
  }
}

provider "aws"{
  profile ="default"
  region = "us-east-2"
}

resource "aws_instance" "terraec2" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"

  tags = {
    Name = "terra-eg"
  }
}
