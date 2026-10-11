resource "consul_intention" "intentions" {
  for_each = var.intentions

  action                = each.value.action
  destination_name      = each.value.destination_name
  source_name           = each.value.source_name
  datacenter            = each.value.datacenter
  description           = each.value.description
  destination_namespace = each.value.destination_namespace
  meta                  = each.value.meta
  source_namespace      = each.value.source_namespace
}

