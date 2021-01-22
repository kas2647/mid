resource "azurerm_virtual_network" "user01-vnet2" {
	name 			= "user01-myVnet2"
	address_space 		= ["101.0.0.0/16"]
	location 			= azurerm_resource_group.user01-admin.location
	resource_group_name	= azurerm_resource_group.user01-admin.name
}
