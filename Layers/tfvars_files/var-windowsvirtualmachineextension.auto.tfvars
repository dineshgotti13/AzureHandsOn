# resource_group_name = null #"[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

enable_log_analytics_extension = true
enable_storage_extension       = true

diagnostics_sa_name         = "[__app_acronym__][__env_name__]statt03"
loganalytics_workspace_name = null #"[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"

virtual_machine_extensions = {
  extn1 = {
    virtual_machine_name            = "[__win_vm_name__]"
    diagnostics_storage_config_path = null
    run_command_script_path         = "//pagefile.ps1"
    run_command_script_args         = null
    custom_scripts                  = null
  },
  # extn2 = {
  #   virtual_machine_name            = "[__win_vm2_name__]"
  #   diagnostics_storage_config_path = null
  #   run_command_script_path         = "//pagefile.ps1"
  #   run_command_script_args         = null
  #   custom_scripts                  = null
  # }
}

ado_subscription_id = null # Change this to NPRD subscription where ADO RG resides when custom script SA is from ADO RG