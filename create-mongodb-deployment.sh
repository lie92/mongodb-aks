#add password in the config/samples/mongodb.com_v1_mongodbcommunity_cr.yaml
kubectl apply -f config/samples/mongodb.com_v1_mongodbcommunity_cr.yaml
kubectl port-forward mongodb-svc 27018:27017
mongo 127.0.0.1:27018

rs.status().members

#or
kubectl run --name some-mongo \
    -e MONGO_INITDB_ROOT_USERNAME=myuser \
    -e MONGO_INITDB_ROOT_PASSWORD=test \
    mongo

mongo "mongodb://<service-object-name>.<namespace>.svc.cluster.local:27017/?replicaSet=<replica-set-name>"
