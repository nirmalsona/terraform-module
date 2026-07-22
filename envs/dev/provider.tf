terraform {
   required_version  = "~> 1.15.0"

   required_providers {
        azurerm = {

           source = "hashicorp/azurerm"
           version = "4.81.0"

          }

}

}


terraform {

       backend "azurerm" {
	   
	   storage_account_name = "devopsnirmalsona2016"
	   
	   container_name = "dev"
	   
	   key = "dev.tfstate"
	   
	   }
	   }


provider "azurerm" {

  features {}



}
		   
         	 
   
	  
