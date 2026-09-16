variable "name" {
  description = "The name of the agent pool."
  type        = string
}

variable "auto_provision" {
  description = "Whether the agent pool should automatically provision agents in every project."
  type        = bool
  default     = false
}

variable "auto_update" {
  description = "Whether agents in this pool should receive automatic updates."
  type        = bool
  default     = true
}

variable "pool_type" {
  description = "The type of the agent pool. Valid values are 'automation' or 'deployment'."
  type        = string
  default     = "automation"

  validation {
    condition     = contains(["automation", "deployment"], var.pool_type)
    error_message = "pool_type must be either 'automation' or 'deployment'."
  }
}

variable "project_ids" {
  description = "List of project IDs to create agent queues in."
  type        = list(string)
  default     = []
}

variable "authorization_pipelines" {
  description = "List of pipeline IDs to authorize for the agent queues."
  type        = list(string)
  default     = []
}
