terraform {
    backend "s3" {
        bucket = "my-terraform-s3-bucket"
        key = "main"
        region = "us-east-1"
        dynamodb_table = "my-dynamodb-table
    }
}