resource "azurerm_resource_group" "rg" {

  for_each = var.dev_vm

  name     = each.value.resource_group_name
  location = each.value.location
}