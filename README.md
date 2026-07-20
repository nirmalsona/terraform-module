 # Infracture automation ## Azure Landing zone ## IAC ## Terraform ## Terraform module ## Dev Env
 
This repository is for creation of Azure Landing Zone covering RG, Vnet, Subnets, NICs, PIPs, VMs .

I created 2 directory one is modules and 2nd one is envs along with subdirectories . 

I followed terraform modular approach where I declared all resources -RG,Vnet,Subnets NICs ,PIPs along with VMs in child module seprately in modules directory.

I used for_each nested map concept  in resource block for each resource arguments like rg, vnet ...etc instaed of passing hard codes valued in main configuration file.

I used variable terraform file for each resource and declared for_each variable inside it .

So each child module has 2 files one is main.tf and 2nd one is variables.tf

Then I created one main.tf file , variables.tf , provider.tf along with dev.tffvars in envs /dev directory for developement landing zone .

I declared azurerm provider in provider.tf and used module block for each child module and called one by one each child module from main.tf

finally I assigned all arguments values to declared variables accordingly for each child module in dev.tfvars.

after that I scueesfully created fully landing one for dev env in dev folder via local terminal .





