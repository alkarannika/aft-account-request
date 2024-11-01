module "account_request_10" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "karannik+terrafork4@amazon.com"
    AccountName               = "terra-new-acc-fork-4"
    ManagedOrganizationalUnit = "infra" 
    SSOUserEmail              = "karannik@amazon.com"
    SSOUserFirstName          = "Annika"
    SSOUserLastName           = "Karlstrom"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
