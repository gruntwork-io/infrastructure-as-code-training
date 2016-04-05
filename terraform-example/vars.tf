variable "ami" {
  description = "The ID of the AMI that has Ruby on Rails installed and contains the code from the example-rails-app"
}

variable "port" {
  description = "The port the Ruby on Rails app should listen on for HTTP requests"
  default = 8080
}