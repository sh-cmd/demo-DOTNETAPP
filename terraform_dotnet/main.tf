module "Resource_group"{
    source = "./Module/Resource_Group"
    rg_name = var.rg_name
    location = var.location

}


module "Webapp" {
    source = "./Module/Webapp"
    depends_on = [
      module.Resource_group
    ]
    appservicename  = var.appservicename
    location  = var.location
    rg_name  = var.rg_name
    azurerm_app_service_plan  = var.azurerm_app_service_plan
}
