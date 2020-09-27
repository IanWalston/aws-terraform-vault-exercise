data "vault_policy_document" "testuser" {
  rule {
    path         = "secret/test"
    capabilities = ["read", "update"]
    description  = "read/write to test path"
  }
}

resource "vault_policy" "testuser" {
  name   = "testuser_policy"
  policy = "${data.vault_policy_document.testuser.hcl}"
}