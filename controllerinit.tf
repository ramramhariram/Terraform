data "aws_caller_identity" "current" {}

module "aviatrix_controller_init" {
  source              = "github.com/AviatrixSystems/terraform-modules.git//aviatrix-controller-initialize?ref=terraform_0.12"
  admin_email         = var.admin_email
  admin_password      = var.admin_password
  private_ip          = module.aviatrixcontroller.private_ip
  public_ip           = module.aviatrixcontroller.public_ip
  access_account_name = "hrs-aviatrix"
  aws_account_id      = data.aws_caller_identity.current.account_id
  vpc_id              = var.controllerVPC
  subnet_id           = var.controllersubnet
  #customer_license_id = var.license
}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "lambda_result" {
  value = "${module.aviatrix_controller_init.result}"
}
