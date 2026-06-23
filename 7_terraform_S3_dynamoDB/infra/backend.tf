terraform {
  backend "s3" {
    bucket         = "s3-day7-bucket"   # your bucket name from output
    key            = "day07/terraform.tfstate"        # path inside the bucket
    region         = "ap-south-1"
    dynamodb_table = "dynamodb_table_name_day7"
    encrypt        = true
  }
}