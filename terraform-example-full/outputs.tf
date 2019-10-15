# Output EC2 instance URL from the example_rails_app_stage module
output "stage_url" {
  value = module.example_rails_app_stage.url
}

# Output EC2 instance URL from the example_rails_app_prod module
output "prod_url" {
  value = module.example_rails_app_prod.url
}
