provider "aws" {
  region = "us-east-2"
  access_key = "AKIAUY5V4M2ZIFFVNTMC"
  secret_key = "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"
}

# Create EC2 instance
resource "aws_instance" "newawsec2" {
  ami                    = "ami-0dacb0c129b49f529"
  instance_type          = "t2.micro"
}

resource "aws_security_group" "shivusg" {
  name = "shivusg"

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
