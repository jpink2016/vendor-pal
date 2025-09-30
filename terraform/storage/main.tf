resource "aws_s3_bucket" "vendor_pal_bucket" {
  bucket = "vendor-pal-${var.env}-${substr(md5(terraform.workspace), 0, 6)}"
}
