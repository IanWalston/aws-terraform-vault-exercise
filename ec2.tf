provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://127.0.0.1:8200"
}

resource "aws_instance" "ikw-1" {
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
  user_data = file("scripts/vault.sh")
  tags = {
    Name = "EC2_Instance_Terraform"
  }
}
