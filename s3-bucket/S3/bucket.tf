resource "aws_s3_bucket" "demos3" {
  bucket = var.bucket_name
  acl    = var.acl_value
}
resource "aws_s3_bucket_object" "folder1" {
    bucket = aws_s3_bucket.demos3.id
    key    = "demo/input/"
    source = "nul"
}
resource "aws_s3_bucket_object" "folder2" {
    bucket = aws_s3_bucket.demos3.id
    key    = "demo/output/"
    source = "nul"
}