# see https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/1.0.0
module "hcp_vault_kvv2" {
  source = "../.."

  cluster_id = "sample-cluster"
}
