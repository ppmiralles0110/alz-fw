variable "rule_collection_group_name" {
  description = "Name of the firewall policy rule collection group"
  type        = string
}

variable "firewall_policy_id" {
  description = "The ID of the Azure Firewall Policy"
  type        = string
}

variable "rule_collection_group_priority" {
  description = "Priority of the rule collection group"
  type        = number
}

variable "app_rule_collection_name" {
  description = "Name of the application rule collection"
  type        = string
}

variable "app_rule_collection_priority" {
  description = "Priority of the application rule collection"
  type        = number
}

variable "app_rule_collection_action" {
  description = "Action for the application rule collection"
  type        = string
}

variable "app_rule_name" {
  description = "Name of the application rule"
  type        = string
}

variable "app_rule_source_addresses" {
  description = "Source addresses for the application rule"
  type        = list(string)
}

variable "app_rule_destination_fqdns" {
  description = "Destination FQDNs for the application rule"
  type        = list(string)
}

variable "network_rule_collection_name" {
  description = "Name of the network rule collection"
  type        = string
}

variable "network_rule_collection_priority" {
  description = "Priority of the network rule collection"
  type        = number
}

variable "network_rule_collection_action" {
  description = "Action for the network rule collection"
  type        = string
}

variable "network_rule_name" {
  description = "Name of the network rule"
  type        = string
}

variable "network_rule_protocols" {
  description = "Protocols for the network rule"
  type        = list(string)
}

variable "network_rule_source_addresses" {
  description = "Source addresses for the network rule"
  type        = list(string)
}

variable "network_rule_destination_addresses" {
  description = "Destination addresses for the network rule"
  type        = list(string)
}

variable "network_rule_destination_ports" {
  description = "Destination ports for the network rule"
  type        = list(string)
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  
}

variable "remote_state_rg" {
  description = "Resource group for remote state storage account"
  type        = string
}

variable "remote_state_sa" {
  description = "Storage account name for remote state"
  type        = string
}

variable "remote_state_container" {
  description = "Blob container name for remote state"
  type        = string
}

variable "remote_state_key" {
  description = "Blob key (file name) for remote state"
  type        = string
}


variable "routing_intent_name" {
  description = "Name of the routing intent"
  type        = string
}

variable "virtual_hub_id" {
  description = "Resource ID of the Virtual Hub"
  type        = string
}

variable "routing_policy_name" {
  description = "Name of the routing policy"
  type        = string
}

variable "routing_policy_destinations" {
  description = "Destinations for the routing policy"
  type        = list(string)
}

variable "routing_policy_next_hop" {
  description = "Resource ID of the next hop (Azure Firewall)"
  type        = string
}

variable "private_routing_policy_name" {
  description = "Name of the private routing policy"
  type        = string
}

variable "private_routing_policy_destinations" {
  description = "Destinations for the private routing policy"
  type        = list(string)
}