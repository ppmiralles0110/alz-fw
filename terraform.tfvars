subscription_id = "b6a9dbe5-1b16-468c-ba1d-610d6e3446c6"


rule_collection_group_name        = "example-fwpolicy-rcg"
firewall_policy_id = "/subscriptions/fe5ae019-27cb-4b01-bc02-608cace3cdb5/resourceGroups/bdoalz-p-rg-hub-southeastasia/providers/Microsoft.Network/firewallPolicies/bdoalz-p-fwp-hub-southeastasia"

rule_collection_group_priority    = 500

app_rule_collection_name          = "app_rule_collection1"
app_rule_collection_priority      = 500
app_rule_collection_action        = "Deny"
app_rule_name                    = "app_rule_collection1_rule1"
app_rule_source_addresses        = ["10.0.0.1"]
app_rule_destination_fqdns       = ["*.microsoft.com"]

network_rule_collection_name      = "network_rule_collection1"
network_rule_collection_priority  = 400
network_rule_collection_action    = "Deny"
network_rule_name                = "network_rule_collection1_rule1"
network_rule_protocols           = ["TCP", "UDP"]
network_rule_source_addresses    = ["10.0.0.1"]
network_rule_destination_addresses = ["192.168.1.1", "192.168.1.2"]
network_rule_destination_ports   = ["80", "1000-2000"]


remote_state_rg        = "alzfwtest"
remote_state_sa        = "alzfwtestblob04062025"
remote_state_container = "alzfwtfstate"
remote_state_key       = "alzfw.terraform.tfstate"



routing_intent_name           = "example-routingintent"
virtual_hub_id                = "/subscriptions/fe5ae019-27cb-4b01-bc02-608cace3cdb5/resourceGroups/bdoalz-p-rg-hub-southeastasia/providers/Microsoft.Network/virtualHubs/bdoalz-p-vwan-hub-southeastasia"
routing_policy_name           = "InternetTrafficPolicy"
routing_policy_destinations   = ["Internet"]
routing_policy_next_hop       = "/subscriptions/fe5ae019-27cb-4b01-bc02-608cace3cdb5/resourceGroups/bdoalz-p-rg-hub-southeastasia/providers/Microsoft.Network/azureFirewalls/bdoalz-p-fw-hub-southeastasia"

private_routing_policy_name         = "PrivateTrafficPolicy"
private_routing_policy_destinations = ["PrivateTraffic"]