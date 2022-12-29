# Terragrunt

Install Terraform NOTE: make sure you install version 1.2.9 and not 1.3.4. Version 1.3.4 is not compatible with terragrunt.
[downlad](https://releases.hashicorp.com/terraform/1.2.9/)
```
lscpu
wget https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_linux_386.zip
unzip terraform_1.2.9_linux_386.zip 

vi .profile
PATH="/opt/terraform:${PATH}"
export PATH
echo 'hello motto'

source .profile 
```

Install Terragrunt
```
get https://github.com/gruntwork-io/terragrunt/releases/download/v0.42.5/terragrunt_linux_386
cp terragrunt_linux_386 /opt/terraform/terragrunt
chmod +x /opt/terraform/terragrunt
source ~/.profile 

```
AWS CLI
[instructions](https://docs.aws.amazon.com/cli/v1/userguide/install-linux.html)
```
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```

AWS Credentials

One of the advantages of using the AWS SDKs for programmatic access to AWS is that the SDKs handle the task of signing requests. All you have to do is provide AWS credentials (access key id and secret access key), and when you invoke a method that makes a call to AWS, the SDK translates the method call into a signed request to AWS.

```
mkdir -p ~/.aws

vi credentials
[terragrunt]
aws_access_key_id=<access_key>
aws_secret_access_key=<secret_key>


```
