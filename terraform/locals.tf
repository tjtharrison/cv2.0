locals {
  # General
  project_name     = "tjth_cv"
  artifacts_bucket = "tjth-artifacts"
  # AWS config
  instance_ami      = "ami-0aef57767f5404a3c"
  availability_zone = "eu-west-1a"
  instance_type     = "t3.micro"

  tjth_cidr = "193.28.11.136/32"

  app_http_port = 80
  app_https_port = 443
}