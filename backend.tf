terraform {
  backend "s3" {
    bucket = "shivu-ec2"
    key    = "shivu-servian"
    region = "us-east-2"
    access_key = AWS_ACCESS_KEY_ID
    secret_key = AWS_ACCESS_SECRET_KEY
  
}
  }
