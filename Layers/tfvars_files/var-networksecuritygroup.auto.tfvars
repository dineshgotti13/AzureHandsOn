resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

network_security_groups = {
  nsg1 = {
    name                      = "[__app_acronym__]-[__region__]-[__env_name__]-[__identifier__]"
    tags                      = { log_workspace = "[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]" }
    subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
    networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    security_rules = [
      {
        name                                         = "nsg"
        description                                  = "NSG"
        priority                                     = 101
        direction                                    = "Outbound"
        access                                       = "Allow"
        protocol                                     = "Tcp"
        source_port_range                            = "*"
        source_port_ranges                           = null
        destination_port_range                       = "*"
        destination_port_ranges                      = null
        source_address_prefix                        = null
        source_address_prefixes                      = null
        destination_address_prefix                   = null
        destination_address_prefixes                 = null
        source_application_security_group_names      = ["[__app_acronym__]-[__region__]-[__env_name__]-asg-1"]
        destination_application_security_group_names = ["[__app_acronym__]-[__region__]-[__env_name__]-asg-2"]
      }
    ]
  }
}

nsg_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}