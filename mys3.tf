terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6.0"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "mybucket-22121964"

  tags = local.common_tags
}

#############################################################################
# OUTPUTS
#############################################################################

output "id_s3" {
  value = aws_s3_bucket.my_bucket.id
}

output "arn_s3" {
  value = aws_s3_bucket.my_bucket.arn
}
