az disk create \
  --resource-group MC_aks1_aks1_westeurope \
  --name myAKSDisk \
  --size-gb 20 \
  --query id --output tsv
