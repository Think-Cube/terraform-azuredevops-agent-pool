# Example: Advanced — Azure DevOps Agent Pool

Automation pool provisioned in two projects with explicit pipeline authorization.

```hcl
module "agent_pool" {
  source = "github.com/Think-Cube/terraform-azuredevops-agent-pool?ref=v1.0.0"

  name           = "pool-myapp-prod"
  pool_type      = "automation"
  auto_update    = true
  auto_provision = false

  project_ids = [
    "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
    "11111111-2222-3333-4444-555555555555",
  ]

  authorization_pipelines = [
    "101",
    "102",
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_agent_pool"></a> [agent\_pool](#module\_agent\_pool) | github.com/Think-Cube/terraform-azuredevops-agent-pool | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
