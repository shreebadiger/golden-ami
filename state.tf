terraform {
  backend "s3" {
    bucket = "d76-terraform-state"
    key    = "golden-ami/terraform.tfstate"
    region = "us-east-1"
  }
}