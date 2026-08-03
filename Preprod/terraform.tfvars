env = {
  prod = {
    resource_group_name  = "Dev-rg"
    location             = "westus"
    virtual_network_name = "dev_vnrt"
    address_space        = ["10.0.0.0/16"]
  }
  prod1 = {
    resource_group_name  = "Dev-rg"
    location             = "westus"
    virtual_network_name = "dev_vnrt"
    address_space        = ["10.0.0.0/16"]
  }
  prod2 = {
    resource_group_name  = "Dev-rg"
    location             = "westus"
    virtual_network_name = "dev_vnrt"
    address_space        = ["10.0.0.0/16"]
  }
}

dev_vm = {
  fvm = {
    resource_group_name    = "Dev-rg"
    location               = "westus"
    virtual_network_name   = "dev_vnrt"
    address_space          = ["10.0.0.0/16"]
    subnet_name            = "fronend_subnet"
    address_prefixes       = ["10.0.1.0/24"]
    public_ip_name         = "frontend_pubip"
    network_interface_name = "frontend_nic"
    ip_configuration_name  = "fip"
    virtual_machine_name   = "frontend_vm"
    admin_username         = "azurerm"
    admin_password         = "Rjil@1234"
    size                   = "Standard_D2s_v3"
  }

  bvm = {
    resource_group_name    = "Dev-rg"
    location               = "westus"
    virtual_network_name   = "dev_vnrt"
    address_space          = ["10.0.1.0/24"]
    subnet_name            = "fronend_subnet"
    address_prefixes       = ["10.0.2.0/24"]
    public_ip_name         = "backend_pubip"
    network_interface_name = "backend_nic"
    ip_configuration_name  = "bip"
    virtual_machine_name   = "fbackend_vm"
    admin_username         = "azurerm"
    admin_password         = "Rjil@1234"
    size                   = "Standard_D2s_v3"
  }
}