provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ikw-1" {
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
  tags = {
    Name = "EC2_Instance_Terraform"
  }
}

