resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

private_endpoints = {
  pe1 = {
    resource_name             = "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"
    name                      = "[__app_acronym__]-[__region__]-[__env_name__]-keyvault-pe"
    subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01" #"jstartvmfirst"
    networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]" #"[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    group_ids                 = ["vault"]
    approval_required         = false
    approval_message          = null
  },
  pe2 = {
    resource_name             = "http_proxy"
    name                      = "[__app_acronym__]-cnxs01-[__region__]-[__env_name__]-http-proxy-pe-01"    # cso naming scheme
    subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01" # "jstartvmfirst"
    networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]" 
    group_ids                 = []
    approval_required         = true
    approval_message          = "[__app_acronym__] [__env_name__] [__region__] proxy ple"
  },
  pe3 = {
    resource_name             = "[__ado_key_vault_name__]"
    name                      = "privateendpointadokv"
    subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01" #"jstartvmfirst"
    networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    group_ids                 = ["vault"]
    approval_required         = false
    approval_message          = null
  },
  pe4 = {
    resource_name             = "[__ado_storage_account_name__]"
    name                      = "privateendpointadosa"
    subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01" #"jstartvmfirst"
    networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    group_ids                 = ["file"]
    approval_required         = false
    approval_message          = null
  }
  # pe3 = {
  #   resource_name             = "jstartvm01082021lv20azsql"
  #   name                      = "privateendpointazsql"
  #   subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
  #   vnet_name                 = [__region__]-[__motsId__]-[__env_name__]-vnet-01 #"jstartvmfirst"
  #   networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
  #   group_ids                 = ["sqlServer"]
  #   approval_required         = false
  #   approval_message          = null
  # }
}

resource_ids = {
  "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]" = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/Microsoft.KeyVault/vaults/[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"
}

external_resource_ids = {
  "http_proxy" = "[__bastion_http_proxy__]"
  "binary_proxy" = "[__bastion_binary_proxy__]"

  "[__ado_key_vault_name__]" = "/subscriptions/[__ado_subscription_id__]/resourceGroups/[__ado_rg_name__]/providers/Microsoft.KeyVault/vaults/[__ado_key_vault_name__]"
  "[__ado_storage_account_name__]" = "/subscriptions/[__ado_subscription_id__]/resourceGroups/[__ado_rg_name__]/providers/Microsoft.Storage/storageAccounts/[__ado_storage_account_name__]"
}

pe_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}
