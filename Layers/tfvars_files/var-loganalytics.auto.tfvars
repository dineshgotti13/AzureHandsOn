resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

name              = "[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
sku               = "PerGB2018"
retention_in_days = 30
key_vault_name    = null #"[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"

log_analytics_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}
