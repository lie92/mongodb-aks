git clone https://github.com/mongodb/mongodb-kubernetes-operator.git
cd mongodb-kubernetes-operator/

#https://github.com/mongodb/mongodb-kubernetes-operator/blob/master/docs/install-upgrade.md#procedure
#operators in same namespace as ressources
kubectl apply -f config/crd/bases/mongodbcommunity.mongodb.com_mongodbcommunity.yaml
#rbac
kubectl apply -k config/rbac/
#check
kubectl get role mongodb-kubernetes-operators
kubectl get rolebinding mongodb-kubernetes-operator
kubectl get serviceaccount mongodb-kubernetes-operator
#operator
kubectl create -f config/manager/manager.yaml