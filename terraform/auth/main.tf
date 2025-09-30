
locals {
  pool_id   = aws_cognito_user_pool.vendorpal_pool.id
  client_id = aws_cognito_user_pool_client.vendorpal_client.id
}

resource "aws_cognito_user_pool" "vendorpal_pool" {
  name = "vendor-pal-${var.env}-pool"

  password_policy {
    minimum_length    = 8
    require_uppercase = true
    require_numbers   = true
  }

  auto_verified_attributes = ["email"]

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_cognito_user_pool_client" "vendorpal_client" {
  name         = "vendor-pal-${var.env}-client"
  user_pool_id = local.pool_id
  explicit_auth_flows = [
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_USER_SRP_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH"
  ]
}

