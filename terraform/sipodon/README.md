VPC
``` 
cd terraform/sipodon/vpc
source ../../export-env-encrypt.sh
source ../../export-env.sh
terraform plan -var "do_token=${DO_PAT}" -var "domain_name=${DO_DOMAIN_NAME}" -var "private_key=${DO_PRIVATE_KEY}"
terraform apply -var "do_token=${DO_PAT}" -var "domain_name=${DO_DOMAIN_NAME}" -var "private_key=${DO_PRIVATE_KEY}"

terraform show | grep "ipv4"
nslookup -type=a sipodon.com | grep "Address" | tail -1
```
