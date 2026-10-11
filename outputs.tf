output "intentions_id" {
  description = "Map of id values across all intentions, keyed the same as var.intentions except keys with no id are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "intentions_action" {
  description = "Map of action values across all intentions, keyed the same as var.intentions except keys with no action are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.action if v.action != null && length(v.action) > 0 }
}
output "intentions_datacenter" {
  description = "Map of datacenter values across all intentions, keyed the same as var.intentions except keys with no datacenter are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "intentions_description" {
  description = "Map of description values across all intentions, keyed the same as var.intentions except keys with no description are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "intentions_destination_name" {
  description = "Map of destination_name values across all intentions, keyed the same as var.intentions except keys with no destination_name are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.destination_name if v.destination_name != null && length(v.destination_name) > 0 }
}
output "intentions_destination_namespace" {
  description = "Map of destination_namespace values across all intentions, keyed the same as var.intentions except keys with no destination_namespace are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.destination_namespace if v.destination_namespace != null && length(v.destination_namespace) > 0 }
}
output "intentions_meta" {
  description = "Map of meta values across all intentions, keyed the same as var.intentions except keys with no meta are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "intentions_source_name" {
  description = "Map of source_name values across all intentions, keyed the same as var.intentions except keys with no source_name are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.source_name if v.source_name != null && length(v.source_name) > 0 }
}
output "intentions_source_namespace" {
  description = "Map of source_namespace values across all intentions, keyed the same as var.intentions except keys with no source_namespace are omitted"
  value       = { for k, v in consul_intention.intentions : k => v.source_namespace if v.source_namespace != null && length(v.source_namespace) > 0 }
}

