ado_private_endpoints = {
  ape1 = {
    name          = "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]-ape"
    resource_name = "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"
    group_ids     = ["vault"]
    dns_zone_name = "privatelink.vaultcore.azure.net"
  }
}

resource_ids = {
  "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]" = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/Microsoft.KeyVault/vaults/[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"
}

ado_resource_group_name = "[__ado_rg_name__]"
ado_vnet_name           = "[__ado_vnet_name__]"
ado_subnet_name         = "[__ado_subnet_name__]"
ado_subscription_id     = "[__ado_subscription_id__]"

ado_pe_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}
