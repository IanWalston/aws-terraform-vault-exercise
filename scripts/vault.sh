# install vault
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vault

# run vault
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN="jfdfjhdoj873d39r7b89732dsh6r87n"
vault server -dev

vault auth enable userpass

vault write auth/userpass/users/testuser1 \
    password=123password \
    policies=testuser




vault kv put secret/test foo=bar
vault kv get secret/test
