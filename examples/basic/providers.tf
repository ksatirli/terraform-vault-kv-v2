# The HCP Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/auth
provider "hcp" {}

# ⚠️ Note that this will persist a Vault Admin Token to Terraform State.
# see https://registry.terraform.io/providers/hashicorp/vault/latest/docs#schema
provider "vault" {
  address = data.hcp_vault_cluster.main.vault_public_endpoint_url
  token   = var.hcp_vault_token
}
