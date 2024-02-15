terraform {
  backend "s3" {
    bucket = "terra-state-dove"
    key    = "terraform/backend_mul_resource"
    region = "us-east-2"
  }
}
