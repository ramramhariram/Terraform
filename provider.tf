provider "aws" {
  #  alias      = "controller"
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Configure Aviatrix provider
provider "aviatrix" { 
  username                = "admin"
  password                = module.aviatrixcontroller.private_ip
  controller_ip           = module.aviatrixcontroller.public_ip
  skip_version_validation = true
  #ensure compatibility with provider version and your controller version
  #https://www.terraform.io/docs/providers/aviatrix/guides/release-compatibility.html
  version = "2.14.1"
  #controller upgrade via terraform is possible using a compatible version here and then later modifying to the latest provider version to use latest resources.
}
