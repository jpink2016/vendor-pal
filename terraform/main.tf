provider "aws" {
  region = "us-east-1"
  profile = terraform.workspace == "prod" ? "iamadmin-prod" : "dev-profile"
}
resource "aws_s3_bucket" "vendor_pal_bucket" {
  bucket = "vendor-pal-${terraform.workspace}-bucket"
  acl    = "private"
}
