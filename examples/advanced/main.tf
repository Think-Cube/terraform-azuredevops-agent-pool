module "agent_pool" {
  source = "../.."

  name           = "pool-myapp-prod"
  pool_type      = "automation"
  auto_update    = true
  auto_provision = false

  # Explicitly queue the pool in two projects
  project_ids = [
    "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee", # project: myapp-core
    "11111111-2222-3333-4444-555555555555", # project: myapp-infra
  ]

  # Authorize specific release pipelines to use the queue
  authorization_pipelines = [
    "101",
    "102",
  ]
}
