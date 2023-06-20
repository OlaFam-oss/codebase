output "ubuntu_IP" {
  value = join("", aws_instance.ubuntu_linux[*].public_ip)
}

output "amazon_linux_IP" {
  value = join("", aws_instance.amazon_linux[*].public_ip)
}