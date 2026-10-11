resource "google_healthcare_workspace" "healthcare_workspaces" {
  for_each = var.healthcare_workspaces

  dataset         = each.value.dataset
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels

  settings {
    data_project_ids = each.value.settings.data_project_ids
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

