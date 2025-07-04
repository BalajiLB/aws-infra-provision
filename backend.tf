terraform {
  backend "s3" {
    bucket         = "my-terraform-state-logabalaji"
    key            = "terraform/statefile/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
