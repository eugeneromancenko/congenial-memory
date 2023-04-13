## Run the app

In a virtualenv, run:

    python setup.py install FLASK_APP=hello flask run

## Tasks to complete

### Deploy the service on AWS Fargate

   * Dockerize the service
   * deploy a cluster with a single service and 2 replicas of this application (i.e.  with one
     task definition and two running tasks).
   * Terraform the deployment. 

### Create a CI/CD deployment

build a CI/CD over the service you have deployed.

#### Flow:

  * Whenever a Pull Request is created, a task testing the application should
    start, and not allowing to merge if the test fails. (Another task for code
    linting is a plus).
  * On merge, the AWS service should redeploy automatically with the new
    changes.


