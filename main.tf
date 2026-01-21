provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "TERRAFORM_HCP" {
  count = 3
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  tags = {
    Name = "TERRA_HCP"
  }
}
