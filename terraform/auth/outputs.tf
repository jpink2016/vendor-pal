output "cognito_user_pool_id" {
  value = local.pool_id
}

output "cognito_client_id" {
  value = local.client_id
}

output "backend_env_file" {
  value = <<EOT
COGNITO_USER_POOL_ID=${local.pool_id}
COGNITO_CLIENT_ID=${local.client_id}
PORT=3000
EOT
}
