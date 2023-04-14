resource "azurerm_resource_group" "rsc_grp" {
  name     = var.storage.rsc_name
  location = var.storage.rsc_location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage.storage_name
  resource_group_name      = var.storage.rsc_name
  location                 = var.storage.rsc_location
  account_tier             = var.storage.account_tier
  account_replication_type = var.storage.rep_type
}

variable "storage" {
  type = object({
    rsc_name = string
    rsc_location = string
    storage_name = string
    account_tier = string
    rep_type = string
    }
  )
  default = {
    rsc_name     = "rsc_name"
    rsc_location = "east us"
    storage_name = "kittu908"
    account_tier = "Standard"
    rep_type     = "LRS"
  }



}





output "details" {
  value = {
   rg_details = azurerm_resource_group.rsc_grp
   storage_details = azurerm_storage_account.storage
  }
}



