resource "aviatrix_controller_config" "controller_backup_config" {
  backup_configuration       = true
  backup_cloud_type          = 1
  backup_account_name        = "hrs-aviatrix"
  sg_management_account_name = "hrs-aviatrix"
  backup_bucket_name         = var.s3bucket
  multiple_backups           = true
  security_group_management  = true
  admin_email         = var.admin_email
  admin_password      = var.admin_password
}
