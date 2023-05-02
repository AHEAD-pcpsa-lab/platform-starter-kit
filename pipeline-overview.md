# PCPSA Orchestration Overview

## Stack Overview

The goal for this document is to identify the various tasks that will be performed for each event type in the stack repositories.   The intended goal is to ensure that any code that will be merged into the main branch will be tested and validated.  This will be done by creating a workflow for each event type. 

As the PCPSA project is current focused on deploying landing zones via Terraform using GitHub Actions, this document will focus on the tasks that will be performed for that.  The concepts may transfer to other languages and orchestration but that is not the focus of this document. 

We are also making the following assumptions:
- We are using a `main` branch as the primary branch for the repository

## Branch protection rules
- PR must be quashed and merged



### Event Types

- [ ] [Push](#stack-push)
- [ ] [Pull Request Opened](#stack-pull-request-opened)
- [ ] [Merged](#stack-merged-to-main)

### Stack - Push

When code is pushed into a non `main` branch the following tasks will be performed:
- Performing a security scan on the code using [Checkov](https://www.checkov.io/1.Welcome/What%20is%20Checkov.html)
- Linting the terraform code using [TFLint](https://github.com/terraform-linters/tflint)
- Ensure there are no secrets defined within the code using [detect-secrets](https://github.com/Yelp/detect-secrets)
- Validate the Terraform code by running the following commands
  - `terraform init`
  - `terraform fmt -check`
  - `terraform validate`
  - `terraform plan`

If any of the above steps return a non-zero exit code, the workflow will fail.  If all of the above steps return a zero exit code, the workflow will succeed.

### Stack - Pull Request Opened

When a pull request is created to the `main` branch, the following tasks will be performed:
- Authenticate with the cloud provider
- Identify the PR Number
- Validate the state file container exists (Will create if it does not)
- Initialize Terraform and specify the remote state file in the container mentioned above
- Run a Terraform Plan
- The Terraform Plan output will saved as file in the S3/Storage Account associated with the state file
- The PR will be updated with a comment that includes the Terraform Plan output


### Stack - Merged to main

When a pull request is merged into the `main` branch, the following tasks will be performed:
- Authenticate with the cloud provider
- Initialize Terraform using the remote state file in the container defined during the PR
- Run a Terraform Apply using the plan output file from the PR
- Update README.md with the latest documentation
- Update Semantic Version of the repository


## Module Overview

Within the module repositories we will focus a more concise set of tasks.  The goal is to ensure that the module is tested and validated before it is published.  The following tasks will be performed:

### Event Types

- [ ] [Push](#module-push)
- [ ] [Pull Request Opened](#module-pull-request-opened)
- [ ] [Merged](#module-merged-to-main)

### Module - Push

When code is pushed into a non `main` branch the following tasks will be performed:
- Performing a security scan on the code using [Checkov](https://www.checkov.io/1.Welcome/What%20is%20Checkov.html)
- Linting the terraform code using [TFLint](https://github.com/terraform-linters/tflint)
- Ensure there are no secrets defined within the code using [detect-secrets](https://github.com/Yelp/detect-secrets)
- Validate the Terraform code by running the following commands
  - `terraform init`
  - `terraform fmt -check`
  - `terraform validate`

If any of the above steps return a non-zero exit code, the workflow will fail.  If all of the above steps return a zero exit code, the workflow will succeed.

### Module - Pull Request Opened

When a pull request is created to the `main` branch, the following tasks will be performed:
- No actions defined here.  Leaving block in place if we need to update in the future.

### Module - Merged to main

When a pull request is merged into the `main` branch, the following tasks will be performed:
- Update README.md with the latest documentation
- Update Semantic Version of the module

