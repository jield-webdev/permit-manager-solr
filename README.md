#permit-manager-solr

Dockerfile for SOLR server use in imec permit system

##Deployment to Azure
```shell script
docker login safe4us.azurecr.io
docker build --tag solr:1.0 .
docker tag solr:1.0 safe4us.azurecr.io/solr:v1
docker push safe4us.azurecr.io/solr:v1
```

##Build package in GitHub
```shell script
cat ~/GH_TOKEN.txt | docker login docker.pkg.github.com -u japaveh --password-stdin
docker build --tag permit-manager-solr:1.0 .
docker tag permit-manager-solr:1.0 docker.pkg.github.com/jield-webdev/permit-manager-solr/permit-manager-solr:v1
docker push docker.pkg.github.com/jield-webdev/permit-manager-solr/permit-manager-solr:v1
```