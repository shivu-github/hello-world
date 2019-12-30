terraform {
  backend "s3" {
    bucket = "shivu-ec2"
    key    = "shivu-servian"
    region = "us-east-2"
  
}
  }
