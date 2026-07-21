resource "azurerm_network_interface" "nics" {
      for_each = var.nics_vim
      name = each.value.nic_name
      location = each.value.location
      resource_group_name = each.value.resource_group_name

      ip_configuration {

        name = "internal"

        subnet_id = data.azurerm_subnet.subnets[each.key].id

        private_ip_address_allocation = "Dynamic"

        public_ip_address_id = data.azurerm_public_ip.pips[each.key].id
      }

}


resource "azurerm_linux_virtual_machine" "vms" {
   
   for_each = var.nics_vim

  name = each.value.vim_name

  location = each.value.location

  resource_group_name = each.value.resource_group_name

  size = "Standard_F2"

  admin_username = "devops"

  admin_password = "devops@123"

  disable_password_authentication = "false"

  network_interface_ids = [azurerm_network_interface.nics[each.key].id]

  os_disk {

    caching = "ReadWrite"

    storage_account_type = "Standard_LRS"
  }

  source_image_reference {

  Publisher: Canonical
Offer: ubuntu-24_04-lts
Sku: server
Version: latest
  }
  }


