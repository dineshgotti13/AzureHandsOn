# Changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.9.0] - 2021-02-17

- The kit now supports the use of MSI or SPN for ADO agent pools, via the useMsi = true/false variable in Variables.yaml. The default and preferred choice is `true`. Note that the object id of the MSI is *required* in the kevault tfvars file, as noted in the README and prior CHANGELOG.

## [2.8.0] - 2021-02-04

### Changed

- Stratum: run-command vm extensions is being added even if script path is null [#364847](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/364847)

## [2.7.0] - 2020-12-14

### Changed

- removed domainjoin layer, domain join will be handled with SCCM

## [2.6.0] - 2020-12-13

### Changed

- updated layer azsql to provide auditing_storage_account_name without dependency on failover group

## [2.5.0] - 2020-12-11

### Changed

- updated scripts: drivesetup and pagefile. Added if statement logic. If pagefile is set to Y drive scripts will not run

## [2.4.0] - 2020-12-11

### Changed

- updated readme file

## [2.2.0] - 2020-12-11

### Changed

- Add qetza.replacetokens task to Jumpstart-Windows-VM [#344592](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/344592)

## [2.1.0] 2020-12-07

### Changed

- VM layer: Update layer to support nics to be added to multiple backend pools [#236317](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/236317)

## [2.0.0] - 2020-11-19

### Changed

- The Kit and its layers now use MSI rather than SPN. Your ADO agent pool must have an MSI or the pipelines and layers will fail, complaining about authentication, missing service principal, etc.

- SPN support is DISABLED in this version of the kit and the associated layers. (the variables are commented out and/or removed) If you wish to use SPN, use an earlier version of the kit or modify/customize the scripts and the layers.

- Added variables for VM to reference existing disk encyrption set
  - use_existing_disk_encryption_set = false
  - existing_disk_encryption_set_name = null
  - existing_disk_encryption_set_rg_name = null

## [1.8.0] - 2020-11-02

updated domain join layer version in the pipeline

## [1.7.0] - 2020-10-20

added windows hostname upper case function

## [1.6.0] - 2020-10-14

- Enable Backup in AZ SQL Server [#194219](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/194219)
- Enable Auditing in AZ SQL Server [#194220](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/194220)
- Enable GEO Replication in AZ SQL Database [#194221](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/194221)
- Added SA and LAW Diagnostics settings for AZ SQL resource.
- Decoupled NSG resource from networking layer.
- Added multiple nic support to windows virtual machines.

### Changed

## [1.5.0] - 2020-10-05

### Changed

- updated layer sequence in windows jsk.

## [1.4.0] - 2020-09-28

### Changed

- Updated the domain join layer values to use the central key vault [200957](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/200957)

## [1.3.0] - 2020-09-28

### Changed

- Updated the domainjoin layer to 0.4.0 which uses msi to retrieve the Key Vault Secret.

## [1.2.0] - 2020-09-15

### Changed

- Resolve Multiple Layer Instance Issue In Layer.sh [#193412](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/193412)

## [1.1.0] - 2020-09-07

### Added

- WJSK: Implement custom extension script [#173452](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/173452)
- WJSK: Implement Back up recovery [#173455](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/173455)
- WJSK: Implement Load balancer [#173454](https://dev.azure.com/ATTDevOps/ATT%20Cloud/_workitems/edit/173454)
