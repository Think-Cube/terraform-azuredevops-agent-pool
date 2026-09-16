# Terraform Module — Azure DevOps Agent Pool

Provisions an `azuredevops_agent_pool` and optionally creates `azuredevops_agent_queue` entries in one or more projects.

## Usage

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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_agent_pool.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/agent_pool) | resource |
| [azuredevops_agent_queue.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/agent_queue) | resource |
| [azuredevops_pipeline_authorization.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/pipeline_authorization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorization_pipelines"></a> [authorization\_pipelines](#input\_authorization\_pipelines) | List of pipeline IDs to authorize for the agent queues. | `list(string)` | `[]` | no |
| <a name="input_auto_provision"></a> [auto\_provision](#input\_auto\_provision) | Whether the agent pool should automatically provision agents in every project. | `bool` | `false` | no |
| <a name="input_auto_update"></a> [auto\_update](#input\_auto\_update) | Whether agents in this pool should receive automatic updates. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the agent pool. | `string` | n/a | yes |
| <a name="input_pool_type"></a> [pool\_type](#input\_pool\_type) | The type of the agent pool. Valid values are 'automation' or 'deployment'. | `string` | `"automation"` | no |
| <a name="input_project_ids"></a> [project\_ids](#input\_project\_ids) | List of project IDs to create agent queues in. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_agent_pool_id"></a> [agent\_pool\_id](#output\_agent\_pool\_id) | The ID of the created Azure DevOps agent pool. |
| <a name="output_agent_pool_name"></a> [agent\_pool\_name](#output\_agent\_pool\_name) | The name of the created Azure DevOps agent pool. |
| <a name="output_queue_ids"></a> [queue\_ids](#output\_queue\_ids) | Map of project\_id to agent queue ID for each project queue created. |
<!-- END_TF_DOCS -->