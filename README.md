## Run the app

In a virtualenv, run:

    python setup.py install FLASK_APP=hello flask run

## Tasks done

### Deploy the service on AWS Fargate

   * Dockerize the service
   * deploy a cluster with a single service and 2 replicas of this application 
   * Terraform the deployment done in this repo -> https://github.com/eugeneromancenko/congenial-memory-tf

### Create a CI/CD deployment

build a CI/CD over the service you have deployed.

#### CI/CD Flow:

  * Whenever a Pull Request is created, a task testing the application should
    start, and not allowing to merge if the test fails. (Another task for code
    linting is a plus).
      - pytest job added , if pytest failed in PR then merge is not allowed
      - pylint job added , if pylint if failed not blocking merge
  * On merge, the AWS service should redeploy automatically with the new
    changes.


