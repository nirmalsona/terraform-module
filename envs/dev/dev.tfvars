rgs = {


  rg1 = {

    name = "dev_rg1"

    location = "central India"


  }

}


vnets = {


  vnet1 = {
    name = "dev_vnet"

    location = "central India"

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


pips = {

  pip1 = {

    name                = "dev_frontend_pip"
    resource_group_name = "dev_rg1"
    location            = "central India"

  }

  pip2 = {

    name                = "dev_backend_pip"
    resource_group_name = "dev_rg1"
    location            = "central India"

  }
}





nics_vim = {


  nicsvim1 = {

    nic_name = "dev_frontend_nic"

    location = "central India"

    resource_group_name = "dev_rg1"

    vim_name = "devfrontendvm"

    subnet_name = "dev_frontend_subnet"


    virtual_network_name = "dev_vnet"

    public_ip_name = "dev_frontend_pip"


  }
}




