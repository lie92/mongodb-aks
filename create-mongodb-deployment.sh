#add password in the config/samples/mongodb.com_v1_mongodbcommunity_cr.yaml
kubectl apply -f config/samples/mongodb.com_v1_mongodbcommunity_cr.yaml

kubectl run  some-mongo \
    --env="MONGO_INITDB_ROOT_USERNAME=myuser" \
    --env="MONGO_INITDB_ROOT_PASSWORD=test" \
    mongo -- bash

kubectl describe mongodbcommunity example-mongodb | grep Uri
mongo "mongodb://<service-object-name>.<namespace>.svc.cluster.local:27017/" --username my-user -p test
show dbs
use local

#https://developer.mongodb.com/quickstart/cheat-sheet/
#https://www.educba.com/mongodb-commands/

#kubectl port-forward mongodb-svc 27018:27017
#mongo 127.0.0.1:27018
#rs.status().members
