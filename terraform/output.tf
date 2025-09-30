
output "cognito_user_pool_id" {
  value = module.auth.cognito_user_pool_id
}

output "cognito_client_id" {
  value = module.auth.cognito_client_id
}

output "backend_env_file" {
  value = module.auth.backend_env_file
}
