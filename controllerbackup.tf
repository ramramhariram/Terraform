resource "aviatrix_controller_config" "controller_backup_config" {
  backup_configuration       = true
  backup_cloud_type          = 1
  backup_account_name        = "hrs-aviatrix"
  sg_management_account_name = "hrs-aviatrix"
  backup_bucket_name         = var.s3bucket
  multiple_backups           = true
  security_group_management  = true
}


resource "aviatrix_account_user" "admin" {
  username     = "admin"
  email        = var.admin_email
  password     = var.admin_password
}

