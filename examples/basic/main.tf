module "agent_pool" {
  source = "github.com/Think-Cube/terraform-azuredevops-agent-pool?ref=v1.0.0"

  name           = "pool-myapp-prod"
  pool_type      = "automation"
  auto_update    = true
  auto_provision = false

  project_ids = [
    "00000000-1111-2222-3333-444444444444"
  ]
}
