output "kinesis_stream_name" {
  description = "Name of the planned Kinesis stream."
  value       = aws_kinesis_stream.lab.name
}

output "kinesis_stream_arn" {
  description = "ARN of the planned Kinesis stream."
  value       = aws_kinesis_stream.lab.arn
}

