

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "Base AMI to launch the instances"
  default = "ami-0dacb0c129b49f529"
}

variable "subnet_id" {
  description = "Instance to be launched"
  default = "subnet-8716fbec"
}

variable "instance_ips" {
  description = "IP"
  default = ""
}
