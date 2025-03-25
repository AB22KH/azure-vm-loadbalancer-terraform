
resource "azurerm_linux_virtual_machine" "vm" {
  count               = var.VM_COUNT
  name                = "vm-${count.index}"
  resource_group_name = var.RESOURCE_GROUP_NAME
  location            = var.LOCATION
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "P@ssword1234!"
  disable_password_authentication = false

  network_interface_ids = [azurerm_network_interface.vm[count.index].id]
}

resource "azurerm_network_interface" "vm" {
  count               = var.VM_COUNT
  name                = "vm-nic-${count.index}"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.main.id
    private_ip_address_allocation = "Dynamic"
  }
}
