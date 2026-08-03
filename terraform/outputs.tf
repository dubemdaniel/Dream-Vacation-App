output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.dream_server.public_ip
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.dream_vpc.id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.dream_subnet.id
}