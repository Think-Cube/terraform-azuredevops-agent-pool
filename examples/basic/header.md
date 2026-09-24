# Example: Basic — Azuredevops Agent Pool

Provisions an Azure DevOps Agent Pool and optional agent queues in projects. Minimal example using required inputs only.

## Usage

```hcl
module "agent_pool" {
  source = "../.."

  name           = "pool-myapp-prod"
  pool_type      = "automation"
  auto_update    = true
  auto_provision = false

  project_ids = [
    "00000000-1111-2222-3333-444444444444"
  ]
}
```