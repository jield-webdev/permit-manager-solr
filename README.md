#SOLR for imec permit system

Dockerfile for SOLR server use in imec permit system

##Deployment

```
docker login safe4us.azurecr.io (via admin user, via Password 2)
docker build --tag solr:1.0 .
docker tag solr:1.0 safe4us.azurecr.io/solr:v1
docker push safe4us.azurecr.io/solr:v1
```