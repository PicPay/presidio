#!/bin/bash
REGISTRY=${1:-mcr.microsoft.com}
TAG=${2:-latest}
<<<<<<< HEAD
helm install --name redis stable/redis --set usePassword=false,rbac.create=true --namespace presidio-system --wait
helm install --name presidio-demo --set registry=$REGISTRY,tag=$TAG ../charts/presidio --namespace presidio
=======
helm install redis stable/redis --set usePassword=false,rbac.create=true --namespace presidio-system --wait
helm install presidio-demo --set registry=$REGISTRY,tag=$TAG ../charts/presidio --namespace presidio
>>>>>>> 82a5b16... Update deploy-presidio.sh
