resource "aws_s3_bucket" "velero" {
  bucket = "velero-primary-bucket"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "velero_versioning" {
  bucket = aws_s3_bucket.velero.id
  versioning_configuration {
    status = "Enabled"
  }
}
