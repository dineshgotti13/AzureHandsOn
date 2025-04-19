resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
net_location        = null

virtual_networks = {
  virtualnetwork1 = {
    name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
    address_space        = ["[__address_space__]"]
    dns_servers          = null
    ddos_protection_plan = null
  },
  # virtualnetwork2 = {
  #   name                 = "jstartvmsecond"
  #   address_space        = ["172.16.0.0/16"]
  #   dns_servers          = null
  #   ddos_protection_plan = null
  # }
}


vnet_peering = {}

subnets = {
  subnet1 = {
    vnet_key          = "virtualnetwork1"
    vnet_name         = null # "jstartvmfirst"
    name              = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    address_prefixes  = ["[__address_space__]"]
    service_endpoints = null
    # service_endpoints = ["Microsoft.Sql", "Microsoft.AzureCosmosDB"]
    # pe_enable         = false
    pe_enable         = true
    delegation        = []
  },
  # subnet2 = {
  #   vnet_key          = "virtualnetwork1"
  #   vnet_name         = null # "jstartvmfirst"
  #   name              = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-02"
  #   address_prefixes  = ["10.0.2.0/24"]
  #   pe_enable         = true
  #   service_endpoints = null
  #   delegation        = []
  # },
  # subnet3 = {
  #   vnet_key          = "virtualnetwork1"
  #   vnet_name         = null # "jstartvmfirst"
  #   name              = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-03"
  #   address_prefixes  = ["10.0.3.0/24"]
  #   pe_enable         = true
  #   service_endpoints = null
  #   # pe_enable         = false
  #   # service_endpoints = ["Microsoft.Sql", "Microsoft.AzureCosmosDB"]
  #   delegation        = []
  # },
  # subnet4 = {
  #   vnet_key          = "virtualnetwork2"
  #   vnet_name         = null # "jstartvmsecond"
  #   name              = "applicationgateway"
  #   address_prefixes  = ["172.16.0.0/24"]
  #   pe_enable         = true
  #   service_endpoints = null
  #   delegation        = []
  # },
  # subnet5 = {
  #   vnet_key          = "virtualnetwork1"
  #   vnet_name         = null # "jstartvmfirst"
  #   name              = "AzureFirewallSubnet"
  #   address_prefixes  = ["10.0.4.0/24"]
  #   pe_enable         = true
  #   service_endpoints = null
  #   delegation        = []
  # }
}

net_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}