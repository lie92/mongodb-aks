az group create --name myResourceGroup --location eastus
az aks create --resource-group myResourceGroup --name myAKSCluster --node-count 2  --generate-ssh-keys
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster