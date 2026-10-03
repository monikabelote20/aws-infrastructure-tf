resource "aws_kms_key" "telemetry_key" {
  description             = "KMS CMK for telemetry bucket encryption"
  deletion_window_in_days = 30
  enable_key_rotation     = true
}

resource "aws_s3_bucket" "archive" {
  bucket        = "telemetry-raw-archive-${var.environment}"
  force_destroy = false
}

resource "aws_s3_bucket_server_side_encryption_configuration" "kms_enc" {
  bucket = aws_s3_bucket.archive.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.telemetry_key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
