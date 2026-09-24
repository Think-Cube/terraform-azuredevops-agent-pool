<!-- BEGIN_TF_DOCS -->
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

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_agent_pool"></a> [agent\_pool](#module\_agent\_pool) | ../.. | n/a |
<!-- END_TF_DOCS -->