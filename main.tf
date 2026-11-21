locals {
  project = "terraform-aws-kinesis-lab"
}

resource "aws_kinesis_stream" "lab" {
  name             = "terraform-kinesis-lab-stream"
  shard_count      = 1
  retention_period = 24

  encryption_type = "KMS"
  kms_key_id      = "alias/aws/kinesis"

  tags = {
    Project     = local.project
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
