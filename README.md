#permit-manager-solr

Dockerfile for SOLR server use in imec permit system

##Deployment to Azure
```shell script
docker login safe4us.azurecr.io

docker build --file Dockerfile --tag permit-manager-solr:1.0 .
docker tag permit-manager-solr:1.0 imecint.azurecr.io/permit-manager-solr:v1
docker push imecint.azurecr.io/permit-manager-solr:v1
```
