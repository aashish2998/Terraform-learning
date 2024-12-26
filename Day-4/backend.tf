terraform {
  backend "s3" {
    bucket         = "aashish-s3-demo-bucket"
    key            = "aashish/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform_lock"
  }
}
