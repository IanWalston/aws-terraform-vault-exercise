# run vault
vault server -dev
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN="jfdfjhdoj873d39r7b89732dsh6r87n"

vault kv put secret/test foo=bar


vault kv get secret/test

path "secret/foo" {
  capabilities = ["read", "update"]
}