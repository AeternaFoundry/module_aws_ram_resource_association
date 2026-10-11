output "ram_resource_associations_id" {
  description = "Map of id values across all ram_resource_associations, keyed the same as var.ram_resource_associations"
  value       = { for k, v in aws_ram_resource_association.ram_resource_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ram_resource_associations_region" {
  description = "Map of region values across all ram_resource_associations, keyed the same as var.ram_resource_associations"
  value       = { for k, v in aws_ram_resource_association.ram_resource_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ram_resource_associations_resource_arn" {
  description = "Map of resource_arn values across all ram_resource_associations, keyed the same as var.ram_resource_associations"
  value       = { for k, v in aws_ram_resource_association.ram_resource_associations : k => v.resource_arn if v.resource_arn != null && length(v.resource_arn) > 0 }
}
output "ram_resource_associations_resource_share_arn" {
  description = "Map of resource_share_arn values across all ram_resource_associations, keyed the same as var.ram_resource_associations"
  value       = { for k, v in aws_ram_resource_association.ram_resource_associations : k => v.resource_share_arn if v.resource_share_arn != null && length(v.resource_share_arn) > 0 }
}

