output "healthcare_workspaces_id" {
  description = "Map of id values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no id are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthcare_workspaces_dataset" {
  description = "Map of dataset values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no dataset are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.dataset if v.dataset != null && length(v.dataset) > 0 }
}
output "healthcare_workspaces_deletion_policy" {
  description = "Map of deletion_policy values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no deletion_policy are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "healthcare_workspaces_effective_labels" {
  description = "Map of effective_labels values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no effective_labels are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "healthcare_workspaces_labels" {
  description = "Map of labels values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no labels are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "healthcare_workspaces_name" {
  description = "Map of name values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no name are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "healthcare_workspaces_settings" {
  description = "Map of settings values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no settings are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => one(v.settings) if v.settings != null && length(v.settings) > 0 }
}
output "healthcare_workspaces_terraform_labels" {
  description = "Map of terraform_labels values across all healthcare_workspaces, keyed the same as var.healthcare_workspaces except keys with no terraform_labels are omitted"
  value       = { for k, v in google_healthcare_workspace.healthcare_workspaces : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

