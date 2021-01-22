resource "azurerm_resource_group" "user01-admin" {
    name     = "user01resourcegroup"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
