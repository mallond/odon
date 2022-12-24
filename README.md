# Fediverse - odon

Goto the Source! Join Mastodon [link](https://joinmastodon.org/)

![image](https://user-images.githubusercontent.com/993459/208936368-2d27ea03-5666-4d1a-a944-16274a216b69.png)

![image](https://user-images.githubusercontent.com/993459/209058009-cfa2b346-9ba5-42da-b427-d9abfc6d5cb4.png)


Time Vault @Dec 21, 2022 Mastodon Is Hurtling Toward a Tipping Point [link](https://www.wired.com/story/mastodon-legal-issues-tipping-point/)  
Time Vault @Dec 22, 2022 Mastodon Twitter Engineeer is all in [link](https://thenewstack.io/why-a-twitter-founding-engineer-is-now-all-in-on-mastodon/)

Mastodon - Infrastructure as Code

## Git Actions
build-all.yml  
destroy-all.yml

## The Journey 

Ansible Vault [link](https://docs.ansible.com/ansible/latest/cli/ansible-vault.html)

All Digital Ocean Terraform Articles [link](https://www.digitalocean.com/community/tutorial_series/how-to-manage-infrastructure-with-terraform)

How To use Terraform with Digital Ocean [link](https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean)
```
Note: Insure you have the public loaded in Digital Ocean, with the same name as what is defined in provider.tf
cd /workspaces/odon/terraform/nginx-example
source ../../export-env.sh
source ../../export-env-encrypt.sh 
terraform plan   -var "do_token=${DO_PAT}"   -var "pvt_key=${pvt_key}"
terraform apply  -var "do_token=${DO_PAT}"   -var "pvt_key=${pvt_key}"
terraform destroy -var "do_token=${DO_PAT}"   -var "pvt_key=${pvt_key}"


```

How To Structure a Terraform Project [link](httpterraform show | grep "ipv4"s://www.digitalocean.com/community/tutorials/how-to-structure-a-terraform-project)

```
cd terraform/structure-example
source ../../export-env-encrypt.sh
source ../../export-env.sh
terraform plan -var "do_token=${DO_PAT}" -var "domain_name=${DO_DOMAIN_NAME}" -var "private_key=${DO_PRIVATE_KEY}"
terraform apply -var "do_token=${DO_PAT}" -var "domain_name=${DO_DOMAIN_NAME}" -var "private_key=${DO_PRIVATE_KEY}"

terraform show | grep "ipv4"
sudo apt install dnsutils
nslookup -type=a sipodon.com | grep "Address" | tail -1

```
resource 
state 
workspace 
modules 

Simple
```
.
└── tf/
    ├── versions.tf
    ├── variables.tf
    ├── provider.tf
    ├── droplets.tf
    ├── dns.tf
    ├── data-sources.tf
    └── external/
        └── name-generator.py
```
Complex
```
.
└── tf/
    ├── modules/
    │   ├── network/
    │   │   ├── main.tf
    │   │   ├── dns.tf
    │   │   ├── outputs.tf
    │   │   └── variables.tf
    │   └── spaces/
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    └── applications/
        ├── backend-app/
        │   ├── env/
        │   │   ├── dev.tfvars
        │   │   ├── staging.tfvars
        │   │   ├── qa.tfvars
        │   │   └── production.tfvars
        │   └── main.tf
        └── frontend-app/
            ├── env/
            │   ├── dev.tfvars
            │   ├── staging.tfvars
            │   ├── qa.tfvars
            │   └── production.tfvars
            └── main.tf
```

Digital Ocean Terraform Provider [link](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)

Digital Ocean Market Place - Mastodon [link](https://marketplace.digitalocean.com/apps/mastodon)
