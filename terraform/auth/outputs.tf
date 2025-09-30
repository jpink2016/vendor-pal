output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.vendorpal_pool.id
}

output "cognito_client_id" {
  value = aws_cognito_user_pool_client.vendorpal_client.id
}

