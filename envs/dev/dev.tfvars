rgs = {


  rg1 = {

    name = "dev_rg1"

    location = "Central India"


  }

}


vnets = {


  vnet1 = {
    name = "dev_vnet"

    location = "Central India"

    resource_group_name = "dev_rg1"

    address_space = ["10.0.0.0/16"]


  }
}


subnets = {

  subnet1 = {

    name                 = "dev_frontend_subnet"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "dev_vnet"

    address_prefixes = ["10.0.1.0/24"]


  }

  subnet2 = {

    name                 = "dev_backend_subnet"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "dev_vnet"

    address_prefixes = ["10.0.2.0/24"]


  }


  subnet3 = {

    name                 = "dev_database_subnet"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "dev_vnet"

    address_prefixes = ["10.0.3.0/28"]


  }


}








nics_vim = {


  nicsvim1 = {

    nic_name = "dev_frontend_nic"

    location = "Central India"

    resource_group_name = "dev_rg1"

    vim_name = "devfrontendvm"

    subnet_name = "dev_frontend_subnet"


    virtual_network_name = "dev_vnet"




  }
}


nsgs = {

  nsgs1 = {

    nsgs_name = "ssh"

    location = "Central India"

    resource_group_name = "dev_rg1"

    security_rule = {
      name                       = "Allow-ssh"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "10.0.0.0/16"
      destination_address_prefix = "*"


    }



  }


}


nsg_nic_ass = {


  nsg_nic_ass1 = {


nsg_name = "ssh"

resource_group_name = "dev_rg1"

nic_name = "dev_frontend_nic"


  }
}