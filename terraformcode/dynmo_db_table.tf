resource "aws_dynamodb_table" "state_table" {
    name = "thoughtworks_tfstate_lock"
    hash_key = "LockID"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "LockID"
      type = "S"
    }
  
}
