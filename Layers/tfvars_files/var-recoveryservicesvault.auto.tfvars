resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]" # "<resource_group_name>"

recovery_services_vaults = {
  rsv1 = {
    name                = "[__app_acronym__]-[__region__]-[__env_name__]-rsv-[__identifier__]"        # <"recovery_services_vault_name">
    policy_name         = "[__app_acronym__]-[__region__]-[__env_name__]-rsv-policy-[__identifier__]" # <"vm_backup_policy_name">
    sku                 = "Standard"                   # <"Standard" | "RS0">
    soft_delete_enabled = false                        # <true | false>
    backup_settings = {
      frequency = "Daily" # <"Daily" | "Weekly">
      time      = "23:00" # <"24hour format">
      weekdays  = null    # <["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]>
    }
    retention_settings = {
      daily   = 10   # <1 to 9999>
      weekly  = null # <"<1 to 9999>:<Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday>">
      monthly = null # <"<1 to 9999>:<Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday>:<First,Second,Third,Fourth,Last>">
      yearly  = null # <"<1 to 9999>:<Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday>:<First,Second,Third,Fourth,Last>:<January,February,March,April,May,June,July,Augest,September,October,November,December>">
    }
  }
}

rsv_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}

