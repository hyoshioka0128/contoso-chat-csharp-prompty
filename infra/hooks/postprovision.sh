#!/bin/bash

echo  "Building contosochatapi:latest..."
az acr build --subscription ${AZURE_SUBSCRIPTION_ID} --registry ${AZURE_CONTAINER_REGISTRY_NAME} --image contosochatapi:latest ./src/
image_name="${AZURE_REGISTRY_NAME}.azurecr.io/contosochatapi:latest"
az containerapp update --subscription ${AZURE_SUBSCRIPTION_ID} --name ${SERVICE_ACA_NAME} --resource-group ${RESOURCE_GROUP_NAME} --image ${image_name}
