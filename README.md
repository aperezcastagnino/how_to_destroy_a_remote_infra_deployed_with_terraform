# THIS IS A KIND OF RED BUTTON 

If at some point in your life, you delete your infra folder with all your Terraform files inside, and because you are a skilled programmer, you were in a state of pure excitement and, to prove you feared nothing, you deleted it with sudo rm -R, well, you're beyond blame, my friend.

FORTUNATELY, you had your tfstate backed up in S3.

Therefore, follow these steps to delete all the AWS infrastructure (since you no longer have the files reflecting that infrastructure).
This solution is based on How to destroy an infra deployed with terraform by tfstate.

1- Load the variables into .env:

```
TF_VAR_account_id=
TF_VAR_region=
TF_VAR_access_key=
TF_VAR_secret_key=
TF_BACKEND_BUCKET=
TF_TFSTATE_FILENAME=
TF_BACKEND_ENCRYPT=
```
2- Load the variables into terraform.tfvars:

```
account_id="123456789012"
region="us-east-2"
access_key="xxxxxxxxxxxxxxxxxxxx"
secret_key="xxxxxxxxxxxxxxxxxxxxxxx"
```

3- And then run the script 
```bash
./run sh
```
