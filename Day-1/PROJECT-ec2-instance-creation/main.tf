provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c0f9e991944630c4"
  key_name      = "devops01"
}
