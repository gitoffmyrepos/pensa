terraform {
  backend "s3" {
    bucket   = "my-localstack-bucket"
    key      = "dev/terraform.tfstate"
    region   = "us-east-1"
    # endpoint = "http://localhost:4566"
    endpoints                   = { s3 = "http://localhost:4566" }
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    use_path_style            = true
  }
}
