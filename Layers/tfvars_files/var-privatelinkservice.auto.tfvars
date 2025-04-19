resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

private_link_services = {
  pls1 = {
    name                           = "[__app_acronym__]-[__region__]-[__env_name__]-winserver-pls-[__identifier__]" # "<private_link_service_name>"
    loadbalancer_name              = null                  #"[__app_acronym__]-[__region__]-[__env_name__]-elb-01"         # "<loadbalancer_name>"
    frontend_ip_config_name        = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"  # "<lb_frontend_name>"
    subnet_name                    = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"               # "<subnet_name>"
    vnet_name                      = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"                  #"jstartvmssfirst"      # "<vnet_name>"
    networking_resource_group      = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    private_ip_address             = null   # "<private_ip_address>"
    private_ip_address_version     = "IPv4" # "<private_ip_address_version>"
    visibility_subscription_ids    = null   # <["00000000-0000-0000-0000-000000000000"]>
    auto_approval_subscription_ids = null   # <["00000000-0000-0000-0000-000000000000"]>
    enable_proxy_protocol          = null
  }
}

pls_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}
