resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

storage_accounts = {
  sa1 = {
    name                     = "[__app_acronym__][__env_name__]statt03"
    sku                      = "Standard_RAGRS" #"Standard_LRS"
    account_kind             = null
    access_tier              = null
    assign_identity          = true
    cmk_enable               = true
    network_rules            = null
    min_tls_version          = "TLS1_2"
    large_file_share_enabled = false
  }
}

# file_shares = {
#   share1 = {
#     name                 = "[__app_acronym__][__env_name__]statt03share1"
#     storage_account_name = "[__app_acronym__][__env_name__]statt03"
#     quota                = "512"
#   }
# }

# tables = {
#   table1 = {
#     name                 = "[__app_acronym__][__env_name__]statt03table1"
#     storage_account_name = "[__app_acronym__][__env_name__]statt03"
#   }
# }

ado_private_endpoints = {
  ape1 = {
    name          = "[__app_acronym__][__env_name__]statt03blob"
    resource_name = "[__app_acronym__][__env_name__]statt03"
    group_ids     = ["blob"]
    dns_zone_name = "privatelink.blob.core.windows.net"
  },
  # ape2 = {
  #   name          = "[__app_acronym__][__env_name__]statt03table"
  #   resource_name = "[__app_acronym__][__env_name__]statt03"
  #   group_ids     = ["table"]
  #   dns_zone_name = "privatelink.table.core.windows.net"
  # }
}

ado_resource_group_name = "[__ado_rg_name__]"
ado_vnet_name           = "[__ado_vnet_name__]"
ado_subnet_name         = "[__ado_subnet_name__]"
ado_subscription_id     = "[__ado_subscription_id__]"

key_vault_name = null #"[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"

sa_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
  pe_enable    = true
}