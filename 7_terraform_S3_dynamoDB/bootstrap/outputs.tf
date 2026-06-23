output "s3_bucket_name" {
  value       = aws_s3_bucket.terraform_state.id
  description = "Copy this into your backend.tf"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.state_lock.name
  description = "Copy this into your backend.tf"
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_state.arn
}