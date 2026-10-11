variable "healthcare_workspaces" {
  description = <<EOT
Map of healthcare_workspaces, attributes below
Required:
    - dataset
    - name
    - settings (block):
        - data_project_ids (required)
Optional:
    - deletion_policy
    - labels
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dataset         = string
    name            = string
    deletion_policy = optional(string)
    labels          = optional(map(string))
    settings = object({
      data_project_ids = list(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

