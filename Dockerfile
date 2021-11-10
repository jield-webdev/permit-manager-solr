FROM solr:8
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/permit-manager-solr/solr"

ADD --chown=solr:solr solr/asset /var/solr/data/asset
ADD --chown=solr:solr solr/building /var/solr/data/building
ADD --chown=solr:solr solr/floor /var/solr/data/floor
ADD --chown=solr:solr solr/permit /var/solr/data/permit
ADD --chown=solr:solr solr/space /var/solr/data/space

