output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

output "current_region" {
  description = "current AWS region"  
  value       = data.aws_region.current.name
}

output "current_private_ip" {
  value       = aws_instance.hw[0].private_ip
}

output "instance_subnet_id" {
  value       = aws_instance.hw[0].subnet_id
}
