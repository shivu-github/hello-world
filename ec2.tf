terraform {
  backend "s3" {
    bucket = "shivu-new"
    key    = "shivu"
    region = "us-east-2"
    access_key = "AKIAQSPKRYWR54HSMOV7"
    secret_key = "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"
  }
}

# Use AWS Terraform provider
provider "aws" {
  region = "us-east-2"
  access_key = "AKIAQSPKRYWR54HSMOV7"
  secret_key = "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"

}

# Create EC2 instance
resource "aws_instance" "shivuec2" {
  subnet_id              = "${var.subnet_id}"   
  ami                    = "${var.ami}"
  #count                  = "${var.count}"
  #key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.shivusg.id}"]
  source_dest_check      = false
  instance_type          = "${var.instance_type}"

}

# Create Security Group for EC2
resource "aws_security_group" "shivusg" {
  name = "shivu-servian-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
