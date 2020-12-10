module "aviatrixcontroller" {
  source  = "github.com/AviatrixSystems/terraform-modules.git//aviatrix-controller-build?ref=terraform_0.12"
  vpc     = var.controllerVPC
  subnet  = var.controllersubnet
  keypair = var.keypair
#  ec2role = module.hrs_iam_roles.aviatrix-role-ec2-name
  ec2role = "aviatrix-role-ec2"
  type = var.AMItype
}


output "controller_private_ip" {
  value = module.aviatrixcontroller.private_ip
}

output "controller_public_ip" {
  value = module.aviatrixcontroller.public_ip
}


/*#output "vpc_id" {
  value = var.vpc
}

output "subnet_id" {
  value = var.subnet
}

output "security_group_id" {
  value = aws_security_group.AviatrixSecurityGroup.id
}
#*/
