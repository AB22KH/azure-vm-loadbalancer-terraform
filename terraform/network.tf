
resource "azurerm_virtual_network" "main" {
  name                = "vm-network"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "main" {
  name                 = "subnet-1"
  resource_group_name  = var.RESOURCE_GROUP_NAME
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}
