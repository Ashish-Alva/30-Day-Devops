terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Sample resource — an EC2 instance to prove the state is working remotely
resource "aws_instance" "demo" {
  ami           = "ami-0bc7aabcf58d1e02a"   # Amazon Linux 2, us-east-1
  instance_type = "t3.micro"

  tags = {
    Name = "Day07-Remote-State-Demo"
  }
}