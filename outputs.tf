output "instance_ips" {
  value = ["${aws_instance.servian-ec25.*.public_ip}"]
}
