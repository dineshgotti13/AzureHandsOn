resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

dns_a_records = {
  arecord1 = {
    a_record_name         = "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"            # <"dns+a_record_name">
    dns_zone_name         = "privatelink.vaultcore.azure.net" # <"dns_zone_name">
    ttl                   = 300                               # <time_to_live_of_the_dns_record_in_seconds>
    ip_addresses          = null                              # <list_of_ipv4_addresses>
    private_endpoint_name = "[__app_acronym__]-[__region__]-[__env_name__]-keyvault-pe"         # <"name of private endpoint for which DNSARecord to be created"
  },
  arecord2 = {
    a_record_name         = "[__ado_key_vault_name__]"          # <"dns+a_record_name">
    dns_zone_name         = "privatelink.vaultcore.azure.net" # <"dns_zone_name">
    ttl                   = 300                               # <time_to_live_of_the_dns_record_in_seconds>
    ip_addresses          = null                              # <list_of_ipv4_addresses>
    private_endpoint_name = "privateendpointadokv"         # <"name of private endpoint for which DNSARecord to be created"
  }
  arecord3 = {
      a_record_name         = "proxy.conexus"           # <"dns+a_record_name">
      dns_zone_name         = "svc.local" # <"dns_zone_name">
      ttl                   = 300                             # <time_to_live_of_the_dns_record_in_seconds>
      ip_addresses          = null                            # <list_of_ipv4_addresses>
      private_endpoint_name = "[__app_acronym__]-cnxs01-[__region__]-[__env_name__]-http-proxy-pe-01"         # <"name of private endpoint for which DNSARecord to be created"
    },
  arecord4 = {
    a_record_name         = "[__ado_storage_account_name__]"          # <"dns+a_record_name">
    dns_zone_name         = "privatelink.file.core.windows.net" # <"dns_zone_name">
    ttl                   = 300                               # <time_to_live_of_the_dns_record_in_seconds>
    ip_addresses          = null                              # <list_of_ipv4_addresses>
    private_endpoint_name = "privateendpointadosa"         # <"name of private endpoint for which DNSARecord to be created"
  }
    # test = {
    #   a_record_name         = "proxy.conexus"           # <"dns+a_record_name">
    #   dns_zone_name         = "privatelink.vaultcore.azure.net" # <"dns_zone_name">
    #   ttl                   = 300                             # <time_to_live_of_the_dns_record_in_seconds>
    #   ip_addresses          = null                            # <list_of_ipv4_addresses>
    #   private_endpoint_name = "[__app_acronym__]-[__region__]-[__env_name__]-keyvault-pe"         # <"name of private endpoint for which DNSARecord to be created"
    # }
  # arecord3 = {
  #   a_record_name         = "jstartvm01082021lv20azsql"            # <"dns+a_record_name">
  #   dns_zone_name         = "privatelink.database.windows.net" # <"dns_zone_name">
  #   ttl                   = 300                                # <time_to_live_of_the_dns_record_in_seconds>
  #   ip_addresses          = null                               # <list_of_ipv4_addresses>
  #   private_endpoint_name = "privateendpointazsql"             # <"name of private endpoint for which DNSARecord to be created"
  # }
}

dns_records_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}