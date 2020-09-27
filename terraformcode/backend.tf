terraform {
  backend "s3" {
    bucket = "anuragthoughtworksassignmentstatefile"
    key    = "global/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table ="thoughtworks_tfstate_lock"
    encrypt        = true
  }
}
