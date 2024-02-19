resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name"
  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = "log-bucket"
    target_prefix = "s3-logs/"
  }

  lifecycle_rule {
    enabled = true
    prefix  = ""
    tags = {
      Expiration = "30"
    }

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
