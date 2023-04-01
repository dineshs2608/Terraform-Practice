############################
#   Backend storage
###########################
variable resource_group_name {
  type = string
  default = "backend"
}

variable storage_account_name {
  type = string
  default = "muu"
}

variable container_name {
  type = string
  default = "statefile"
}

variable access_key {
  default = "BT62kjMDWDWr18IErvSt8g5+K2pXS3IITyR+kckVn1gKVQp6jUk4n7wwtgIL/SfBlc++vHaBsJPW+AStvtBv+g=="
}

############################
#  provider block
###########################
variable subscription_id {
   type = string
   default = "47ec7704-3c94-4cb1-b3c3-d0b77c2f60bf"
 }


 variable tenant_id {
   type = string
   default = "313f4e52-ec58-4a95-88d5-38c5e54f5c47"
 }

 variable client_id {
   type = string
   default = "261bc6cb-3216-4535-8387-360afe5b0041"
}

 variable client_secret {
   type = string
   default = "Mcz8Q~4LFTvNJsSzqlXIJX3RFTS~QqIRCctgEcUF"
 }
############################
#  Resource Group
###########################

variable rgname {
  type = string
  default = "practice-rg"
}

variable location {
  type = string
  default = "central india"
}

# ############################
# #  nsg
# ###########################
# variable nsgname {
#   type = string
#   default = "practice-nsg"
# }

############################
#  vnet
###########################

variable vnet-name {
  type = string
  default = "practice-vnet"
}

# variable address_space  {
#   default = "10.0.0.0/16"
# }

# variable dns_servers {
#   default = ["10.0.0.4", "10.0.0.5"]
#}

variable tags {
  type = string
  default = "Dev Environment"
}

