module "my_rg" {
    source = "../../modules/azure_resourcegroup"
    rgs = var.rgs
}

module "my_storage" {
    depends_on = [ module.my_rg ]
    source = "../../modules/azure_storage_account"
    storage = var.storage
    }
