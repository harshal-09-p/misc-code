module "tools-vm" {
  for_each             = var.tools 
  source               = "./vm"
  name                 = each.key
  rg_name              = var.rg_name
  location             = var.location
  vm_size              = each.value["vm_size"]
}