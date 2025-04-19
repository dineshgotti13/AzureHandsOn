subscriptionId = "[__subscriptionID__]"
tenantId       = "[__tenantID__]"

resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

vm_performanceanalysis_monitoring_workbooks = {
  vmwbperfanalysis = {
    workbookDisplayName = "vmpawb"
    workbookName        = "VM-PA-Workbook"
    workbookSourceId    = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
  }
}

vm_performancegraph_monitoring_workbooks = {
  vmwbperfgraph = {
    workbookDisplayName = "vmpgwb"
    workbookName        = "VM-PG-Workbook"
    workbookSourceId    = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
  }
}

vm_vmssoperational_overview = {
  vmssoperationswb = {
    workbookDisplayName = "vmvowb"
    workbookName        = "VM-Operation-Workbook"
    workbookSourceId    = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
  }
}