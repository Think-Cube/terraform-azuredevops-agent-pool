output "agent_pool_id" {
  description = "The ID of the created Azure DevOps agent pool."
  value       = azuredevops_agent_pool.main.id
}

output "agent_pool_name" {
  description = "The name of the created Azure DevOps agent pool."
  value       = azuredevops_agent_pool.main.name
}

output "queue_ids" {
  description = "Map of project_id to agent queue ID for each project queue created."
  value       = { for project_id, queue in azuredevops_agent_queue.main : project_id => queue.id }
}
