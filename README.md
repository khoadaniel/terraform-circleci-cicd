# terraform-circleci-cicd
This repository serves as a boilerplate code for using CircleCI to implement CI/CD for terraforming GCP resources.


Encrypt the Service Account json key with GCP KMS:
```kms encrypt --plaintext-file=service-account-key.json --ciphertext-file=service-account-key.json.enc --location=europe --keyring=my-keyring-tf --key=my-key-tf```