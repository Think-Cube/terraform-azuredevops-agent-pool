resource "azuredevops_agent_pool" "main" {
  name           = var.name
  auto_provision = var.auto_provision
  auto_update    = var.auto_update
  pool_type      = var.pool_type
}

resource "azuredevops_agent_queue" "main" {
  for_each = toset(var.project_ids)

  agent_pool_id = azuredevops_agent_pool.main.id
  project_id    = each.value
}

resource "azuredevops_pipeline_authorization" "main" {
  for_each = {
    for pair in flatten([
      for project_id in var.project_ids : [
        for pipeline_id in var.authorization_pipelines : {
          key        = "${project_id}:${pipeline_id}"
          project_id = project_id
          pipeline_id = pipeline_id
        }
      ]
    ]) : pair.key => pair
  }

  project_id  = each.value.project_id
  resource_id = azuredevops_agent_queue.main[each.value.project_id].id
  type        = "queue"
  pipeline_id = each.value.pipeline_id
}
