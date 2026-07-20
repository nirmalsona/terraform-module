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

module "dev_public_ip" {

  depends_on = [module.dev_rg]
  source     = "../../modules/4.azurerm_public_ip"

  pips = var.pips


}

module "nic_vm" {

  depends_on = [module.dev_public_ip, module.dev_subnet]
  source     = "../../modules/5.azurerm_network_interface_card & vm"

  nics_vim = var.nics_vim

}

