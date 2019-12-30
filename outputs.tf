output "instance_ips" {
  value = ["${aws_instance.shivuec2.*.public_ip}"]
}
