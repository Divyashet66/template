#!/bin/bash
builder=paketobuildpacks/builder:full
image_name=todo
src_folder_name=nodejs-todo/

deployment_metadata_name=todo-app
replicas=1
selector_name=todo-app
template_label_name=todo-app
container_name=todo-app
image=gcr.io/tech-rnd-project/todo
container_port=3000

kubeContext=gke_tech-rnd-project_us-central1-a_skaffold-cluster
manifest1=k8/deployment.yaml
manifest2=k8/service.yaml
profile=staging
skaffold_metadata_name=staging-prod-deploy

service_metadata_name=todo-app
service_port=3000
service_target_port=3000
type=LoadBalancer
selector_app=todo-app

