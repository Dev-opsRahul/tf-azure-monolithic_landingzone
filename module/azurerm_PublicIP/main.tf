resource "azurerm_public_ip" "pip" {

  for_each = var.dev_vm

  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"

}
