data "azurerm_resource_group" "example" {
    name = "pipelinerg"
}
resource "azurerm_public_ip" "example" {
    name                = "pip22"
    resource_group_name = data.azurerm_resource_group.example.name
    location            = data.azurerm_resource_group.example.location
    allocation_method   = "Static"

    tags = {
      "environment" = "Production"
    }
  
}