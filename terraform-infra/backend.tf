terraform {
  backend "gcs" {
    bucket  = "terraform_statefilee"
    prefix  = "terraform.tfstate"
  }
}
