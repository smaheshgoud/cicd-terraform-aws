provider "aws" {
  profile = "mahesh_mac"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

# terraform {
#   cloud {
#     organization = "smaheshgoud"

#     workspaces {
#       name = "gh-actions-demo"
#     }
#   }
# }
