variable "intentions" {
  description = <<EOT
Map of intentions, attributes below
Required:
    - action
    - destination_name
    - source_name
Optional:
    - datacenter
    - description
    - destination_namespace
    - meta
    - source_namespace
EOT

  type = map(object({
    action                = string
    destination_name      = string
    source_name           = string
    datacenter            = optional(string)
    description           = optional(string)
    destination_namespace = optional(string)
    meta                  = optional(map(string))
    source_namespace      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.intentions : (
        contains([for v in ["allow", "deny"] : lower(v)], lower(v.action))
      )
    ])
    error_message = "must be one of: \"allow\", \"deny\""
  }
}

