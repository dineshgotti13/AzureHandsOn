# resource_group_name = null #"[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

custom_script_extensions = {
  extn1 = {
    name                 = "changedriveletter"
    virtual_machine_name = "[__win_vm_name__]"
    command_to_execute   = "rename c:\\azuredata\\customdata.bin customdata.ps1 && powershell -file c:\\azuredata\\customdata.ps1"
  },
  # extn2 = {
  #   name                 = "changedriveletter"
  #   virtual_machine_name = "[__win_vm2_name__]"
  #   command_to_execute   = "rename c:\\azuredata\\customdata.bin customdata.ps1 && powershell -file c:\\azuredata\\customdata.ps1"
  # }
}
