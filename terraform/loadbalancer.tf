
resource "azurerm_public_ip" "lb" {
  name                = "lb-public-ip"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  allocation_method   = "Static"
}

resource "azurerm_lb" "main" {
  name                = "vm-loadbalancer"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  sku                 = "Standard"
  frontend_ip_configuration {
    name                 = "public-ip"
    public_ip_address_id = azurerm_public_ip.lb.id
  }
}

resource "azurerm_lb_backend_address_pool" "main" {
  loadbalancer_id = azurerm_lb.main.id
  name            = "backend-pool"
}
