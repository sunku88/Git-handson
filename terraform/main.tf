 resource "aws_s3_bucket" "s3example" {
  bucket = var.bucket_name

  tags = {
    Name        = "ExampleBucket"
    Environment = "prod"
  }
 }

 resource "aws_instance" "sunkuInstance" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"

  tags = {
    Name = "sunkuec2"
  }
}

resource "aws_ecr_repository" "my_ecr" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE"

  tags = {
    Environment = var.environment
    Project     = "demo"
  }
}

resource "aws_ecr_repository" "my_ecr2" {
  name                 = "sspc-ecr"
  image_tag_mutability = "MUTABLE"

  tags = {
    Environment = var.environment
    Project     = "demo"
  }
}