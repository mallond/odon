# odon

![image](https://user-images.githubusercontent.com/993459/208936368-2d27ea03-5666-4d1a-a944-16274a216b69.png)

Time Vault @Dec 21, 2022 Mastodon Is Hurtling Toward a Tipping Point [link](https://www.wired.com/story/mastodon-legal-issues-tipping-point/_

Mastodon - Infrastructure as Code

## Git Actions
build-all.yml  
destroy-all.yml

## The Journey 

All Digital Ocean Terraform Articles [link](https://www.digitalocean.com/community/tutorial_series/how-to-manage-infrastructure-with-terraform)

How To use Terraform with Digital Ocean [link](https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean)

How To Structure a Terraform Project [link](https://www.digitalocean.com/community/tutorials/how-to-structure-a-terraform-project)

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
