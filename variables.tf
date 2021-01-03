variable "region" {}

locals {
  env = terraform.workspaces
  worker-node = {
    dev     = 1
    staging = 1
    hotfix  = 1
    prod    = 3
  }

  instance-type = {
    dev     = "t3a.medium"
    staging = "t3a.medium"
    hotfix  = "t3a.medium"
    prod    = "t3a.2xlarge"
  }
}
