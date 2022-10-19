# Create Multiple Subnets within 1 VPC iteratively

# Create Azure Resource Group
resource "azurerm_resource_group" "uu-az-rsg" {
    name = var.res_group_name
    location = var.az_location

    tags = {
      "Name" = "uursgfromtf"
      env = "dev"
    }  
}

# Create Azure Subnets
resource "azurerm_virtual_network" "uu-az-virtualnet" {
    for_each = var.Subnetlist
    name = each.value.name
    address_space = [ each.value.address ]
    location = var.az_location
    resource_group_name = var.res_group_name

    depends_on = [
      azurerm_resource_group.uu-az-rsg
    ]

}
