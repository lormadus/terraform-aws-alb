# ALB 접근 로그를 저장하기 위해 생성
# 이름은 S3가 PaaS서비스이기 때문에 특수문자나 "_" 사용 안됨
# 글로벌하게 유일한 이름으로 생성 필요 (이미 생성된 S3 버킷이 있으면 생성안됨)

resource "aws_s3_bucket" "user30-s3" {
  bucket = "sk-user30-alb-log.com"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.alb_account_id}:root"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::sk-user30-alb-log.com/*"
    }
  ]
}
  EOF

  lifecycle_rule {
    id      = "log_lifecycle"
    prefix  = ""
    enabled = true

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 90
    }
  }

  lifecycle {
    prevent_destroy = false
  }
}
