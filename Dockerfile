FROM solr:latest
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/permit-manager-solr/solr"

ENV SOLR_OPTS="-XX:-UseLargePages"

ADD --chown=solr:solr solr/asset /var/solr/data/asset
ADD --chown=solr:solr solr/building /var/solr/data/building
ADD --chown=solr:solr solr/floor /var/solr/data/floor
ADD --chown=solr:solr solr/permit /var/solr/data/permit
ADD --chown=solr:solr solr/template /var/solr/data/template
ADD --chown=solr:solr solr/space /var/solr/data/space

