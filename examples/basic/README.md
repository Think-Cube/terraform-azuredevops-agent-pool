# Example: Terraform Module — Azure DevOps Agent Pool

Provisions an `azuredevops_agent_pool` and optionally creates `azuredevops_agent_queue` entries in one or more projects.

```hcl
module "agent_pool" {
  source = "github.com/Think-Cube/terraform-azuredevops-agent-pool?ref=v1.0.0"

  name         = "my-agent-pool"
  auto_update  = true
  auto_provision = false
  pool_type    = "automation"

  project_ids = [
    "00000000-1111-2222-3333-444444444444"
  ]
}
```