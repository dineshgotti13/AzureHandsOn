resource_groups = {
  resource_group_1 = {
    name     = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    location = "[__region__]"
    tags = {
      created_by   = "[__creator_name__]"
      contact_dl   = "[__contact_dl__]"
      mots_id      = "[__motsId__]"
      auto_fix     = "yes"
      env          = "[__env_name__]"
      automated_by = "Terraform"
    }
  }
}