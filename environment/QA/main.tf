module "resource-group" {

  source = "../../module/resource-group"

  rg-name = var.rg-name

}

module "storage-account" {

  source     = "../../module/storage-account"
  strg-name  = var.strg-name
  depends_on = [module.resource-group]
}