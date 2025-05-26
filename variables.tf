variable "azuredevops_agent_pools" {
  type = map(object({
    name           = string
    auto_provision = bool
    pool_type      = string
  }))

  description = <<DESC
A map defining the Azure DevOps agent pools to be created. Each entry should include:
  - `name`: The name of the agent pool.
  - `auto_provision`: Whether the pool should automatically provision agents.
  - `pool_type`: The type of the agent pool (e.g., 'automation' or 'deployment').
DESC

  default = {
    default_pool = {
      name           = "DefaultPool"
      auto_provision = true
      pool_type      = "automation"
    }
  }
}
