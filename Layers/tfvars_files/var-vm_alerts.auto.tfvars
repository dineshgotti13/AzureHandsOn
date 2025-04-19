subscriptionId = "[__subscriptionID__]"
tenantId       = "[__tenantID__]"

resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

vm_disktransfers_disk_alert = {
  vmdisktransfersdisk = {
    scope         = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    threshold     = 100
  }
}

vm_linux_availablememory_memory_alert = {
  vmlam = {
    scope         = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    threshold     = 1
  }
}

vm_linux_percentused_disk_alert = {
  vmlinuxpercentusedspacedisk = {
    scope         = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    threshold     = 95
  }
}

vm_percentagelimit_cpu_alert = {
  vmplcpu = {
    scope         = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    threshold     = 75
  }
}

vm_windows_availablememory_alert = {
  vmwam = {
    scope         = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    threshold     = 512
  }
}

vm_windows_percentagefree_disk_alert = {
  vmwpfds = {
    scope         = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
    threshold     = 95
  }
}

vm_readwritebytespersec_network_alert = {
  vmrwbsa1 = {
    dataSourceId  = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    actionGroupId = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.insights/actiongroups/[__app_acronym__]-[__region__]-[__env_name__]-azmon-actiongroup-01"
  }
}