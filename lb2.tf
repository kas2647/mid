resource "azurerm_lb" "user01-lb2" {
  name                    = "user01lb2"
  location                = azurerm_resource_group.user01-admin.location
  resource_group_name     = azurerm_resource_group.user01-admin.name
  
  frontend_ip_configuration {
    name                  = "user01PublicIPAddress2"
    public_ip_address_id   = azurerm_public_ip.user01-publicip2.id
  }
}
