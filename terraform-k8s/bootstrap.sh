#!/bin/sh
yc managed-kubernetes cluster get-credentials $CLUSTER_NAME --external --force --folder-id $FOLDER_ID
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update ingress-nginx
kubectl create ns nginx-ingress
helm upgrade --install nginx-ingress-release ingress-nginx/ingress-nginx \
 --namespace=nginx-ingress --version="4.4.2"
helm repo add jetstack https://charts.jetstack.io
helm repo update jetstack
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.0/cert-manager.crds.yaml
helm install \
cert-manager jetstack/cert-manager \
--namespace cert-manager \
--create-namespace \
--version v1.11.0
kubectl apply -f ../.cert-manager/acme-issuer.yaml