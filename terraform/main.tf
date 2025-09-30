 provider "aws" {
  region = "us-east-1"
  profile = terraform.workspace == "prod" ? "iamadmin-prod" : "dev-profile"
}
module "auth" {
  source = "./auth"
  env    = terraform.workspace
}

module "backend" {
  source = "./backend"
  env    = terraform.workspace
}

module "storage" {
  source = "./storage"
  env    = terraform.workspace
}

