module "dev_rg" {

  source = "../../modules/1.azurerm_resource_group"

  rgs = var.rgs

}

module "dev_vnet" {

  depends_on = [module.dev_rg]

  source = "../../modules/2.azurerm_virtual_network"

  vnets = var.vnets
}

module "dev_subnet" {

  depends_on = [module.dev_vnet]

  source = "../../modules/3.azurerm_subnet"

  subnets = var.subnets


}



module "nic_vm" {

  depends_on = [module.dev_subnet]
  source     = "../../modules/5.azurerm_network_interface_card & vm"

  nics_vim = var.nics_vim

}


module "nsg" {

  depends_on = [module.dev_subnet]
  source     = "../../modules/6.azurerm_network_security_group"

  nsgs = var.nsgs

}


module "nsg_nic_ass" {

  depends_on = [module.nsg, module.nic_vm]
  source     = "../../modules/7.azurerm_nsg_nic association"
  nsg_nic_ass = var.nsg_nic_ass

}