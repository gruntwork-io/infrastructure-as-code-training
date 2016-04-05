output "url" {
  value = "http://${aws_instance.example_rails_app.public_ip}:${var.port}"
}