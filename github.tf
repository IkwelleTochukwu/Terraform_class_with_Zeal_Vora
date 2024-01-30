terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.0.0-beta"
    }
  }
}

provider "github" {
  # Configuration options
  token = "input_github_token"
}

resource "github_repository" "Terraform_class_with_Zeal_Vora" {
  name        = "Terraform_class_with_Zeal_Vora"
  description = "Learning terraform with Zeal Vora"

  visibility = "public"
  }
