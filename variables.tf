
variable "key_name" {
  description = "Private key name to use with instance"
  default     = "terraform"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "Base AMI to launch the instances"

  # Bitnami NGINX AMI
  default = "ami-0dacb0c129b49f529"
}

variable "subnet_id" {
  description = "Instance to be launched"

  # Bitnami NGINX AMI
  default = "subnet-8716fbec"
}
