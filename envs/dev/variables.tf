variable "rgs" {type = map(object({ }))}  # Multiple RG names ke liye
variable "vnets" {type = map(object({ }))}   # Multiple VNet names ke liye
variable "subnets" {type = map(object({ }))} # Multiple Subnet CIDR blocks ke liye
variable "pips" {type = map(object({ }))}   # Multiple Public IP names ke liye
variable "nics_vim"{type = map(object({ }))} # Multiple NIC names ke liye

