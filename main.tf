terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.31.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

data "terraform_remote_state" "alz_output" {
  backend = "azurerm" 
  config = {
    resource_group_name  = var.remote_state_rg
    storage_account_name = var.remote_state_sa
    container_name       = var.remote_state_container
    key                  = var.remote_state_key
  }
}

resource "azurerm_firewall_policy_rule_collection_group" "example" {
  name               = var.rule_collection_group_name
  firewall_policy_id = var.firewall_policy_id
  priority           = var.rule_collection_group_priority

  application_rule_collection {
    name     = var.app_rule_collection_name
    priority = var.app_rule_collection_priority
    action   = var.app_rule_collection_action

    rule {
      name = var.app_rule_name
      protocols {
        type = "Http"
        port = 80
      }
      protocols {
        type = "Https"
        port = 443
      }
      source_addresses  = var.app_rule_source_addresses
      destination_fqdns = var.app_rule_destination_fqdns
    }
  }

  network_rule_collection {
    name     = var.network_rule_collection_name
    priority = var.network_rule_collection_priority
    action   = var.network_rule_collection_action

    rule {
      name                  = var.network_rule_name
      protocols             = var.network_rule_protocols
      source_addresses      = var.network_rule_source_addresses
      destination_addresses = var.network_rule_destination_addresses
      destination_ports     = var.network_rule_destination_ports
    }
  }
}

resource "azurerm_virtual_hub_routing_intent" "example" {
  name           = var.routing_intent_name
  virtual_hub_id = var.virtual_hub_id

  routing_policy {
    name         = var.routing_policy_name
    destinations = var.routing_policy_destinations
    next_hop     = var.routing_policy_next_hop
  }

  routing_policy {
    name         = var.private_routing_policy_name
    destinations = var.private_routing_policy_destinations
    next_hop     = var.routing_policy_next_hop
  }
}