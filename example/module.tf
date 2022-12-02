provider "github" {
  token = var.github_token 
}

variable "github_token" {}

module "sandbox" {
  source = "../src"

  github_org                    = "edfenergy"
  target_repository_full_name   = "pknw1/tf_target"
  commit_message                = "as" 
  commit_author                 = "as"
  commit_email                  = "s"
  overwrite_on_create           = true
  apps                          = ["sandbox_workflow", "rover_workflow", "tfsec_workflow"] 
}

