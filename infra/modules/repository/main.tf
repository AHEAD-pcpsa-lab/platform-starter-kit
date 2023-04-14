terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.22"
    }
  }
}

provider "github" {
  owner = var.github_owner
  token = "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"
}

resource "github_repository" "test-pcpsa-tf-modules" {
  name = var.repo_name
  description = var.repo_description
  visibility = "private"
  allow_auto_merge = false
}