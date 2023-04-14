terraform {
  required_version = "1.4.4"
}

module "github-repo" {
  source = "../../../modules/repository"
}