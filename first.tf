provider "azurerm" {
  subscription_id = "6c4c8aa9-7619-49c3-90e5-5ed6379206ce"
  client_id       = "4fa51088-87b1-46a8-aedc-df60fb9c3a27"
  client_secret   = "ctmgNp_SKCVEUVVKFs.tS~SET~_qN0bW1w"
  tenant_id       = "662fe93f-685e-4e6a-a8d2-3604267f226f"


  features {}
}

terraform {
    backend "azurerm" {
        resource_group_name ="rg2"
        storage_account_name = "rg2strorage"
        container_name = "con1"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "demo1" {
  name     = "khan1"
  location = "eastus"
  tags = {
      env = "resource-group-demo"
  }

}

resource "azurerm_resource_group" "demo2" {
 name     = "khan2"
  location = "southindia"
}
