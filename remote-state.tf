terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "RamRamHariram-workspace"
    workspaces {
      name = "sixdotO"
    }
  }
}
