resource "azurerm_lb_backend_address_pool" "user01-bpepool2" {
    name = "user01-BackEndAddressPool2"
    resource_group_name = azurerm_resource_group.user01-admin.name
    loadbalancer_id     = azurerm_lb.user01-lb2.id
}
