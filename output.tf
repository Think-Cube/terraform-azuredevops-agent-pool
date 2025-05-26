output "agent_pool_names" {
  description = "List of names for the Azure DevOps agent pools provisioned by this module."
  value       = [for pool in azuredevops_agent_pool.main : pool.name]
  sensitive   = false
}

output "agent_pool_ids" {
  description = "Unique identifiers (IDs) of the Azure DevOps agent pools created by this module."
  value       = [for pool in azuredevops_agent_pool.main : pool.id]
  sensitive   = false
}

output "agent_pool_auto_provision_flags" {
  description = "Boolean flags indicating whether auto-provisioning is enabled for each created agent pool."
  value       = [for pool in azuredevops_agent_pool.main : pool.auto_provision]
  sensitive   = false
}
