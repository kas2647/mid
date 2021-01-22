resource "azurerm_lb_nat_pool" "lbnatpool" {
    resource_group_name = azurerm_resource_group.user01-admin.name
    name = "ssh"
    loadbalancer_id = azurerm_lb.user01-lb.id
    protocol = "Tcp"
    frontend_port_start = 50000
    frontend_port_end = 50119
    backend_port = 22
    frontend_ip_configuration_name = "user01PublicIPAddress"
}
