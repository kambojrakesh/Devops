terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}








provider "aws" {
  region     = "ap-south-1"
  access_key = "W"
  secret_key = "k/dlCW5C"


}



resource "aws_instance" "Server1"{
  ami = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform_ec2"
  }
}
