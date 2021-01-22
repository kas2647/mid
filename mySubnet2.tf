resource "azurerm_subnet" "user01-subnet2" {
    name = "user01-mysubnet2"
    resource_group_name = azurerm_resource_group.user01-admin.name
    virtual_network_name = azurerm_virtual_network.user01-vnet2.name
    address_prefixes = ["101.0.1.0/24"]
}
