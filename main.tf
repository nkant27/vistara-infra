module "my_rg" {
    source = "../../modules/azure_resourcegroup"
    rgs = {
     my_module_rg = "Central India"
    }
}

module "my_storage" {
    depends_on = [ module.my_rg ]
    source = "../../modules/azure_storage_account"
    storage ={
  sg1 = {
  name                     = "sto0079"
  resource_group_name      = "my_module_rg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
 }
 }
}

