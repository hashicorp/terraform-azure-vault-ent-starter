## Unreleased

BREAKING CHANGES:
* Reduced deployment scope for the VM role definition to its Resource Group
  * **NOTE:** This role definition change incurs no direct downtime, but requires Terraform to replace two resources. This will fail initially due to the role definition's fixed name (Terraform will generate an error when attempting to create a replacement with the same name). To work around this, delete the role definition and its assignment first:

```bash
az role assignment delete --ids /subscriptions/SUBSCRIPTIONGUIDHERE/resourceGroups/myresourcegroupname/providers/Microsoft.Authorization/roleAssignments/ROLEASSIGNMENTGUID
az role definition delete --name my-resource-name-prefix-vault-server --scope /subscriptions/SUBSCRIPTIONGUIDHERE
```
The role assignment ID, subscription GUID, and role definition name will be displayed by Terraform via `terraform plan`

IMPROVEMENTS:
* Switch VM configuration to use user_data instead of custom_data

FIXES:
* Add UserAssigned to type for identity in config file to accomodate provider version changes
* szurerm provider v3 update - AZ for load balancer and routing priority

## 0.1.1 (August 27, 2021)

* Update TLS directory permissions
* Remove client cert and key from profile script
* Update indentation in configuration file
* Update config and file permissions to match Deployment Guide
* Update disk specs to new Reference Architecture recommendations
* Update default version to 1.8.1
* Add `vm_scale_set_name` & `vault_version` module outputs

## 0.1.0 (July 28, 2021)

* Initial release
