resource "aws_s3_bucket" "b" {
  bucket = "adonis-bucket-s3-assigment"

  tags = {
    Name = "adonis-bucket-assignment"
  }
}
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.b.id
  key    = "Adonis99"
  source = "index.html"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("index.html")
}




