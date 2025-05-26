resource "azuredevops_agent_pool" "main" {
  for_each       = var.azuredevops_agent_pools
  name           = each.value.name
  auto_provision = each.value.auto_provision
  pool_type      = each.value.pool_type
}