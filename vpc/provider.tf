terraform{
    required_providers {
      aws= {
        source="hashicrop/aws"
        version="5.58.0"
      }
    }
    backend "s3" {
        bucket = "daws78-s3-bucket"
        dynamodb_table = "daws78-dynamo"
        region = "us-east-1"
        key = "expense-for-loop"
    }
}
provider "aws" {
    region = "us-east-1"
}