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