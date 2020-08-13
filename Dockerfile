FROM solr:8
LABEL maintainer="info@jield.nl"

ADD solr/asset /opt/solr/server/solr/configsets/asset
ADD solr/building /opt/solr/server/solr/configsets/building
ADD solr/floor /opt/solr/server/solr/configsets/floor
ADD solr/permit /opt/solr/server/solr/configsets/permit
ADD solr/space /opt/solr/server/solr/configsets/space

