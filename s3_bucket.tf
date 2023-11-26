provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_s3_bucket" "hwd1_bucket" {
  bucket = "hwd1-bucket"

  tags = {
    Name        = "hwd1-bucket"
    Environment = "Dev"
  }
} 