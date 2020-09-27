terraform {
    backend "s3" {
        bucket = "ikw-terraform-vault-1"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}