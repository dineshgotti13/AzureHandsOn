resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

action_groups = {
  ag1 = {
    name                     = "[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    short_name               = "[__app_acronym__][__env_name__]ag1"
    enabled                  = null
    arm_role_receivers       = null
    azure_app_push_receivers = null
    azure_function_receivers = null
    email_receivers          = null
    logic_app_receivers      = null
    voice_receivers          = null
    webhook_receivers        = null
    sms_receivers            = null
  }
}

azure_monitor_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}