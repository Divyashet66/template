#!/bin/bash
deployment_metadata_name=draw-app
replicas=1
selector_name=draw-app
template_label_name=draw-app
container_name=draw-app
image=gcr.io/tech-rnd-project/draw
container_port=1234

kubeContext=gke_tech-rnd-project_us-central1-a_skaffold-cluster
manifest1=k8/deployment.yaml
manifest2=k8/service.yaml
profile=staging
skaffold_metadata_name=staging-prod-deploy

service_metadata_name=draw-app
service_port=1234
service_target_port=1234
type=LoadBalancer
selector_app=draw-app

