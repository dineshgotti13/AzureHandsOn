resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

application_security_groups = {
  asg1 = {
    name = "[__app_acronym__]-[__region__]-[__env_name__]-asg-1"
  },
  asg2 = {
    name = "[__app_acronym__]-[__region__]-[__env_name__]-asg-2"
  }
}

app_security_groups_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}
