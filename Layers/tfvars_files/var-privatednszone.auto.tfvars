resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

private_dns_zones = {
  zone1 = {
    dns_zone_name = "privatelink.vaultcore.azure.net"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  },
  zone2 = {
    dns_zone_name = "svc.local"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name   = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        vnet_name                = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        zone_to_vnet_link_exists = false
      }
    ]
    registration_enabled = false
  },
  zone3 = {
    dns_zone_name = "sbc.com"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name   = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        vnet_name                = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        zone_to_vnet_link_exists = false
      }
    ]
    registration_enabled = false
  },
  zone4 = {
    dns_zone_name = "atttest.com"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name   = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        vnet_name                = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        zone_to_vnet_link_exists = false
      }
    ]
    registration_enabled = false
  },
  zone5 = {
    dns_zone_name = "privatelink.file.core.windows.net"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  }
  # zone3 = {
  #   dns_zone_name = "privatelink.database.windows.net"
  #   zone_exists   = false
  #   vnet_links = [
  #     {
  #       zone_to_vnet_link_name    = "first-vnet-link"
  #       vnet_name                 = "jstartvmfirst"
  #       networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
  #       zone_to_vnet_link_exists  = false
  #     }
  #   ]
  #   registration_enabled = false
  # }
}

dns_zone_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}