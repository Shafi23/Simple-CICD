provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-051a31ab2f4d498f5"
  instance_type = "t3.micro"

  tags = {
    Name = "Webhook-Server"
  }
}
terraform {
  backend "s3" {
    bucket         = "shafi-terraform-state-441130535976"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
