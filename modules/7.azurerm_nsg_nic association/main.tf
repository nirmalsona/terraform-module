resource "azurerm_network_interface_security_group_association" "nic_nsg_ass" {
    for_each = var.nsg_nic_ass 

  network_interface_id                      = data.azurerm_network_interface.nic[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
}