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
  token = "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"
}

resource "github_repository" "Terraform_class_with_Zeal_Vora" {
  name        = "Terraform_class_with_Zeal_Vora"
  description = "Learning terraform with Zeal Vora"

  visibility = "public"
  }
