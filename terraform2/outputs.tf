output "public_server_IP_instance" {
  description = "prints out IPs for each instance created"
  value = [
    aws_instance.my_server_1.public_ip,
    aws_instance.my_server_2.public_ip,
    aws_instance.my_server_3.public_ip
  ]
}

output "ssm_command_1" {
  description = "prints out SSM command cli"
  value       = [
    "aws ssm start-session --target ${aws_instance.my_server_1.id}",
    "aws ssm start-session --target ${aws_instance.my_server_2.id}",
    "aws ssm start-session --target ${aws_instance.my_server_3.id}"
  ]
}
