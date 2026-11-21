# Amazon Kinesis Terraform Validation Evidence

## Environment

- AWS account: 774305591665
- IAM user: 3rd-lab-user
- AWS region: us-east-1
- Terraform version: 1.17.0
- AWS provider version: 6.73.0
- Project: terraform-aws-kinesis-lab

## AWS Discovery

Commands:

```bash
aws kinesis list-streams --region us-east-1
```

Observed results:

```text
StreamNames: []
StreamSummaries: []
Stream count: 0
```

## Terraform Initialization

Command:

```bash
terraform init
```

Observed result:

```text
Terraform has been successfully initialized!
```

## Terraform Validation

Command:

```bash
terraform validate
```

Observed result:

```text
Success! The configuration is valid.
```

## Terraform Plan

Command:

```bash
terraform plan -input=false -no-color
```

Observed result:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

## Planned Resource

aws_kinesis_stream.lab

Properties:

- Name: terraform-kinesis-lab-stream
- Shard count: 1
- Retention: 24 hours
- Encryption: KMS
- KMS key: alias/aws/kinesis

## Planned Outputs

- kinesis_stream_name: terraform-kinesis-lab-stream
- kinesis_stream_arn: known after apply

## Deployment Status

PLAN ONLY — NOT DEPLOYED.

No terraform apply was executed.

No Kinesis Data Stream was created.

## Screenshot

screenshots/kinesis-terraform-validation.png
