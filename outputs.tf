output "intentions_id" {
  description = "Map of id values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.id }
}
output "intentions_action" {
  description = "Map of action values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.action }
}
output "intentions_datacenter" {
  description = "Map of datacenter values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.datacenter }
}
output "intentions_description" {
  description = "Map of description values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.description }
}
output "intentions_destination_name" {
  description = "Map of destination_name values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.destination_name }
}
output "intentions_destination_namespace" {
  description = "Map of destination_namespace values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.destination_namespace }
}
output "intentions_meta" {
  description = "Map of meta values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.meta }
}
output "intentions_source_name" {
  description = "Map of source_name values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.source_name }
}
output "intentions_source_namespace" {
  description = "Map of source_namespace values across all intentions, keyed the same as var.intentions"
  value       = { for k, v in consul_intention.intentions : k => v.source_namespace }
}

