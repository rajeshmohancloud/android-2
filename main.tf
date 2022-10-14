terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  owner = "rajeshmohancloud"
  token = var.token
}

resource "github_repository_project" "project" {
  name       = "A Repository Project"
  repository = "rajeshmohancloud/android-2"
  body       = "This is a repository project."
}

variable "token" {}