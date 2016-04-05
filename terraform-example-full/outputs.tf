# Output EC2 instance URL from the example_rails_app module
output "url" {
  value = "${module.example_rails_app.url}"
}