## Unreleased

**NOTE:** The example tls module Key Vault Certificate resource change will prompt Terraform to replace it (resulting in an error because of the resource's fixed name). To work around this, manually update the certificate's tags to match the desired state in Terraform. E.g.:

```bash
az keyvault certificate set-attributes --vault-name KEYVAULTNAME --name RESOURCEPREFIX-vault-cert --tags TAGKEY=TAGNAME
```
* Updated example TLS Key Vault Certificate resource to include resource tags

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
