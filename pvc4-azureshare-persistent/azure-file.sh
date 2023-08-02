#az storage account create -n kafkam1storageaccount -g MC_aks1_aks1_westeurope -l westeurope --sku Standard_LRS 
#export AZURE_STORAGE_CONNECTION_STRING=$(az storage account show-connection-string -n kafkam1storageaccount -g MC_aks1_aks1_westeurope -o tsv)
#az storage share create -n kafkam1share --connection-string $AZURE_STORAGE_CONNECTION_STRING
STORAGE_KEY=$(az storage account keys list --resource-group MC_aks1_aks1_westeurope --account-name kafkam1storageaccount --query "[0].value" -o tsv)
echo Storage account key: $STORAGE_KEY

kubectl create secret generic azure-secret --from-literal=azurestorageaccountname=kafkam1storageaccount --from-literal=azurestorageaccountkey=$STORAGE_KEY

