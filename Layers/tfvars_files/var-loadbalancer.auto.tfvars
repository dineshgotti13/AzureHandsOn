resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

load_balancers = {
  loadbalancer1 = {
    name = "[__app_acronym__]-[__region__]-[__env_name__]-elb-01"
    sku  = "Standard"
    frontend_ips = [
      {
        name                      = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
        subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
        vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01" #"jstartvmssfirst"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        static_ip                 = null # "10.0.1.4" #(Optional) Set null to get dynamic IP 
        zones                     = null
      },
      # {
      #   name                      = "jstartvmlbfrontend1"
      #   subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
      #   vnet_name                 = [__region__]-[__motsId__]-[__env_name__]-vnet-01 #"jstartvmssfirst"
      #   networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
      #   static_ip                 = null # "10.0.1.4" #(Optional) Set null to get dynamic IP
      #   zones                     = null
      # }
    ]
    # backend_pool_names = ["jstartvmlbbackend", "jstartvmlbbackend1"]
    backend_pool_names = ["[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]"]
    enable_public_ip   = false # set this to true to if you want to create public load balancer
    public_ip_name     = null
  },
  loadbalancer2 = {
    name = "[__app_acronym__]-[__region__]-[__env_name__]-lb-02"
    sku  = "Standard"
    frontend_ips = [
      {
        name                      = "[__app_acronym__]-[__region__]-[__env_name__]-lb-02-fep-[__identifier__]"
        subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
        vnet_name                 = "[__region__]-[__motsId__]-[__env_name__]-vnet-01"
        networking_resource_group = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
        static_ip                 = null
        zones                     = null
      }
    ]
    backend_pool_names = ["[__app_acronym__]-[__region__]-[__env_name__]-lb-02-bep-[__identifier__]"]
    enable_public_ip   = true
    public_ip_name     = "jstartvmlbpublicip1"
  }
}

load_balancer_rules = {
  loadbalancerrules1 = {
    name                      = "lb1-ssh-lbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
    backend_pool_name         = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]"
    lb_protocol               = null
    lb_port                   = "22"
    probe_port                = "22"
    backend_port              = "22"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  },
  loadbalancerrules2 = {
    name                      = "lb1-rdp-lbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
    backend_pool_name         = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]"
    lb_protocol               = null
    lb_port                   = "3389"
    probe_port                = "3389"
    backend_port              = "3389"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  },
  loadbalancerrules3 = {
    name                      = "lb1-connect-deirct-lbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
    backend_pool_name         = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]"
    lb_protocol               = null
    lb_port                   = "1364"
    probe_port                = "1364"
    backend_port              = "1364"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  },
  loadbalancerrules4 = {
    name                      = "lb1-connect-deirct1-lbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
    backend_pool_name         = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]"
    lb_protocol               = null
    lb_port                   = "1363"
    probe_port                = "1363"
    backend_port              = "1363"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  },
  loadbalancerrules5 = {
    name                      = "lb1-mssql-lbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
    backend_pool_name         = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]"
    lb_protocol               = null
    lb_port                   = "1433"
    probe_port                = "1433"
    backend_port              = "1433"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  }
}

load_balancer_nat_pools = {}

lb_outbound_rules = {
  rule1 = {
    name                            = "outboundrule"
    lb_key                          = "loadbalancer2"
    protocol                        = "Tcp"
    backend_pool_name               = "[__app_acronym__]-[__region__]-[__env_name__]-lb-02-bep-[__identifier__]"
    allocated_outbound_ports        = null
    frontend_ip_configuration_names = ["[__app_acronym__]-[__region__]-[__env_name__]-lb-02-fep-[__identifier__]"]
  }
}

# load_balancer_nat_rules = {
#   loadbalancernatrules1 = {
#     name                    = "jstartvmlbnatrule"
#     lb_keys                 = ["loadbalancer1"]
#     frontend_ip_name        = "[__app_acronym__]-[__region__]-[__env_name__]-lb-01-fep-[__identifier__]"
#     lb_port                 = 80
#     backend_port            = 22
#     idle_timeout_in_minutes = 5
#   }
# }

lb_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}