module "resource_group" {
  source = "../module/azurerm_resource_group"
  dev_vm = var.env

}

module "virtual_net" {

  depends_on = [module.resource_group]
  source     = "../module/azurerm_virtual_network"
  dev_vm     = var.env
}

module "subnet" {
  depends_on = [module.virtual_net]
  source     = "../module/azurerm_subnet"
  dev_vm     = var.dev_vm
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../module/azurerm_PublicIP"
  dev_vm     = var.dev_vm
}

module "Virtual_machine" {
  depends_on = [module.subnet]
  source     = "../module/azurerm_Virtual_Machine"
  dev_vm     = var.dev_vm
}