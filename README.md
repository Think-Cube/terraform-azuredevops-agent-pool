## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 1.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_agent_pool.main](https://registry.terraform.io/providers/microsoft/azuredevops/1.10.0/docs/resources/agent_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azuredevops_agent_pools"></a> [azuredevops\_agent\_pools](#input\_azuredevops\_agent\_pools) | A map defining the Azure DevOps agent pools to be created. Each entry should include:<br/>  - `name`: The name of the agent pool.<br/>  - `auto_provision`: Whether the pool should automatically provision agents.<br/>  - `pool_type`: The type of the agent pool (e.g., 'automation' or 'deployment'). | <pre>map(object({<br/>    name           = string<br/>    auto_provision = bool<br/>    pool_type      = string<br/>  }))</pre> | <pre>{<br/>  "default_pool": {<br/>    "auto_provision": true,<br/>    "name": "DefaultPool",<br/>    "pool_type": "automation"<br/>  }<br/>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_agent_pool_auto_provision_flags"></a> [agent\_pool\_auto\_provision\_flags](#output\_agent\_pool\_auto\_provision\_flags) | Boolean flags indicating whether auto-provisioning is enabled for each created agent pool. |
| <a name="output_agent_pool_ids"></a> [agent\_pool\_ids](#output\_agent\_pool\_ids) | Unique identifiers (IDs) of the Azure DevOps agent pools created by this module. |
| <a name="output_agent_pool_names"></a> [agent\_pool\_names](#output\_agent\_pool\_names) | List of names for the Azure DevOps agent pools provisioned by this module. |
