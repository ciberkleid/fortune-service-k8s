# fortune-service application
Returns fortunes in random sequence

### Option 1: Script for quick & easy direct deployment to Cloud Foundry:

https://github.com/ciberkleid/cna-demo-setup

### Option 2: Pipeline-based deployment using Concourse or Jenkins and Spring Cloud Pipelines:

https://github.com/spring-cloud/spring-cloud-pipelines#step-by-step-cloud-foundry-migration


---

# Deployment to Kubernetes

Pre-requisite 1: Kubernetes Cluster
- Follow PKS documentation to create a kubernetes cluster

Set up using [lift](https://github.com/pivotal/spring-to-cloud/tree/master/lift):
- Follow the steps in the [lift README](https://github.com/pivotal/spring-to-cloud/blob/master/lift/README.adoc) to download & build lift and to set up the `lift` alias . Make sure you satisfy the pre-requisites for lift as well (kubectl 1.14+ and skaffold, at the time of writing of these instructions)
- In this case we will deploy to PKS (Pivotal Container Service). Make sure kubectl is targeting your PKS cluster.
- Build lift and set the lift alias, as described in the README
- Use `lift platform list` to verify that lift is working and it is pointing to your desired cluster with profile=local

From Baseline Code:
```$xslt
git clone https://github.com/ciberkleid/fortune-service-k8s
cd fortune-service-k8s
git checkout ffcfabbe38d681da7b104734d2d7fcabde8ad1e1
lift kubernetes new
lift platform deploy
```