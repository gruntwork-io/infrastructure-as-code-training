# Output the URL of the EC2 instance after the templates are applied
output "url" {
  value = "http://${aws_instance.example_rails_app.public_ip}:${var.port}"
}
