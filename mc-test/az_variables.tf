# Azure Region
variable "az_location" {
    type = string 
    description = "Resource Group Location"
    default = "southindia"  
}

variable "res_group_name" {
    type = string 
    description = "Azure Resource Group"
    default = "uu-az-rsg"
}

variable "virtual_net_name" {
    type = string 
    description = "Azure Virtual Network Name"
    default = "uu-az-vnet"
}

variable "az_vpc_cidr" {
  type = list(string)
  description = "VPC CIDR"
  default = ["10.10.0.0/16"]
}

variable "AZSubnetlist" {
    type = map(object({
      name    = string
      address = string
    }))
    default = {}    
  }