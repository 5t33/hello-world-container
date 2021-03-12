terraform {
  backend "s3" {
    bucket = "tf-state-sstaley"
    key    = "tf-cloud-demo/terraform.tfstate"
    region = "us-west-2"
    profile = "personal"
    dynamodb_table = "terraform-dynamodb-locks"  
  }
}
