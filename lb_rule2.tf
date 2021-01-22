resource "azurerm_lb_rule" "lbnatrule2" {
    resource_group_name = azurerm_resource_group.user01-admin.name
    loadbalancer_id = azurerm_lb.user01-lb2.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user01-bpepool2.id
    frontend_ip_configuration_name = "user01PublicIPAddress2"
    probe_id = azurerm_lb_probe.user01-lb-probe2.id
}
