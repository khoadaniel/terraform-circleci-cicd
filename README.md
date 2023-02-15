# terraform-circleci-cicd
This repository serves as a boilerplate code for using CircleCI to implement CI/CD for terraforming GCP resources.


## How to store Service Account json Key securely
You need to create an environment varible in CircleCI:
`TF_VAR_googlecred` = "the content of your json key"
When tf command runs in CircleCI container, it will read this ENV VAR as `googlecred`.
Refer to the main.tf for more details.


Encrypt the Service Account json key with GCP KMS:
```kms encrypt --plaintext-file=service-account-key.json --ciphertext-file=service-account-key.json.enc --location=europe --keyring=my-keyring-tf --key=my-key-tf```