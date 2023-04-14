module "new" {
  source = "../.."
  for_each = local.storage_account
  
  
  
}

locals {
  storage_account = {
    storage1 = {

    rsc_name     = "rsc_name"
    rsc_location = "east us"
    storage_name = "kittu908"
    account_tier = "Standard"
    rep_type     = "LRS"

    }
    storage2 = {

    rsc_name     = "rsc_name1"
    rsc_location = "east us"
    storage_name = "kittu9089"
    account_tier = "Standard"
    rep_type     = "LRS"

  }
  storage3 = {
    rsc_name     = "rsc_name3"
    rsc_location = "east us"
    storage_name = "kittu99"
    account_tier = "Standard"
    rep_type     = "LRS"

  }

  }
}
/*
output "details" {
    value = module.new.details
}*/