variable "rgs" { type = list(string) }     # Multiple RG names ke liye
variable "vnets" { type = list(string) }   # Multiple VNet names ke liye
variable "subnets" { type = list(string) } # Multiple Subnet CIDR blocks ke liye
variable "pips" { type = list(string) }    # Multiple Public IP names ke liye
variable "nics_vim" { type = list(string) }# Multiple NIC names ke liye

