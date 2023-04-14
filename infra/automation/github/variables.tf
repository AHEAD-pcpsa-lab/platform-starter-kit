variable "github_owner" {
  type = string
  description = "Github organization name"
  default = "AHEAD-pcpsa-lab"
}

variable "repo_name" {
  type= string
  description = "repo name"
  default = "pcpsa-root"
}

variable "repo_description" {
  type= string
  description = "repo description"
  default = "project root repo"
}

variable "repo_source_code_uri" {
  type= string
  description = "source code to commit to repo"
  default = null
}