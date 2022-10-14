terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

resource "github_repository_project" "project" {
  name       = "A Repository Project"
  repository = "android-2"
  body       = "This is a repository project."
}