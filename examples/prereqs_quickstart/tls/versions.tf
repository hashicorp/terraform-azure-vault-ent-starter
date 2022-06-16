terraform {
  required_version = ">= 1.2.1"

  required_providers {
    azurerm = ">=3.0"
    random  = ">=1.0"

    # tls = ">=1.0"
    # https://github.com/hashicorp/terraform-provider-tls/issues/205
    tls = {
      source  = "troyready/tls"
      version = "3.1.50"
    }
  }
}
