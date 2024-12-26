provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "aashish" {
  instance_type = "t2.micro"
  ami           = "ami-053b12d3152c0cc71" # change this
  //subnet_id = "subnet-019ea91ed9b5252e7" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "aashish-s3-demo-bucket" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


// terraform destroy -lock=false - used this cmd to destroy , (as i was unable to destroy the terraform (And i was using AWS-IAM which didn't have access to create dynamoDb))
