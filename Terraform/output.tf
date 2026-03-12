output "public_ec2_public_ip" {
  value = aws_instance.my_public_instance.public_ip
}

output "public_ec2_public_dns" {
  value = aws_instance.my_public_instance.public_dns
}

output "public_ec2_private_ip" {
  value = aws_instance.my_public_instance.private_ip
}

output "private_ec2_private_ip" {
  value = aws_instance.my_master_instance.private_ip
}

output "private_ec2_public_ip" {
  value = aws_instance.my_master_instance.public_ip
}
output "slave_private_ips" {
  value = aws_instance.my_slave_instance[*].private_ip
}
output "slave_public_ips" {
  value = aws_instance.my_slave_instance[*].public_ip
}