terraform {
  backend "s3" {
    bucket = "shivu-servian"
    key    = "shivu"
    region = "us-east-2"
    access_key = "AKIAQSPKRYWRWHNG7ER6"
    secret_key = "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"
  }
}

# Use AWS Terraform provider
provider "aws" {
  region = "us-east-2"
  access_key = "AKIAQSPKRYWRWHNG7ER6"
  secret_key = "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"

}

# Create EC2 instance
resource "aws_instance" "default" {
  subnet_id              = "${var.subnet_id}"   
  ami                    = "${var.ami}"
  #count                  = "${var.count}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  source_dest_check      = false
  instance_type          = "${var.instance_type}"

  tags {
    Name = "shivu-servian"
  }
}

# Create Security Group for EC2
resource "aws_security_group" "default" {
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
