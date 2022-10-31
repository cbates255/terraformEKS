terraform {
  backend "remote" {
    organization = "cbates255"

    workspaces {
      name = "terraformEKS"
    }
  }
}