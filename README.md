## Task 7 CI/CD

**CI/CD A continuous integration and continuous deployment (CI/CD)** pipeline is a series of steps that must be performed in order to deliver a new version of software. CI/CD pipelines are a practice focused on improving software delivery throughout the software development life cycle via automation.

To complete this task we need to:

1. Create a **Service Account** for Terraform (Go to IAM in the GCP Console).
2. Generate for that Service Account (**ADD KEY**, choose the JSON for the Key type).
3. On GCP console **create bucket** in which the terraform state file will be stored.
4. Create new repository in GitHub called **dareit-task-terraform**. Go to the Settings tab in the repository. Choose Actions under the Security section. Click the button **New repository secret**.

After that we defines our terraform code in files:

* **backend.tf**
* **provider.tf**
* **main.tf**
* **.github/workflows/terraform.yml**

The file called backend tf will stored the terraform state file, provider.tf defines the procider of cloud resources, main.tf defines the created resources. The last one file called github/workflows/terraform.yml containd the definition of the pipeline. The pipeline will run very time we push a new commit to the main branch in our repository (dareit-task-terraform) or open Pull Request (dareit-terraform-ma).

After commit all files to the remote repository on GitHub and push the change, we can see the new running workflow in GitHub Actions. We can check each step to see the outputs of the commend that were run.

Fallow step of running workflow:

* Set up job
* Checkout
* Setup Terraform
* Terraform Init
* Terraform Format
* Terraform Plan
* Terraform Apply
* Post Ckeckout
* Complete job


On GCP console we can check if the terraform state file is present in the bucket created in the previous steps and if a new Compute Instance got successfully created.