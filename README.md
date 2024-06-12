# Permit Manager SOLR

Dedicated SOLR docker container for SOLR search engines, based on SOLR latest

## Bulk update cores

```bash
find ./ -name 'core.properties' -type f -exec sed -i 's/name=/name=permit_/g' {} \;
```

## Create a dedicated server on Azure for a SOLR service

Follow these instructions to create a dedicated Debian VM to host an SOLR instance on Azure.

Pre-requirements are a VLAN with an own subnet for intranet services

### Create VLAN

Go to azure and create new Virtual network and create a dedicated subnet for the website services (App service and SOLR)
Create 10.254.0.0/16 as address space and create

- 10.254.0.0/24 as subnet for production. (Web)
- 10.254.1.0/24 as subnet for VM

### Create VM

Create a Debian based virtual machine (D2s v3) and use a public key pair. Connect the VM to the production subnet

Install SOLR (latest version)

```shell
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install default-jdk
wget https://www.apache.org/dyn/closer.lua/solr/solr/9.6.0/solr-9.6.0.tgz?action=download
mv solr-9.6.0.tgz?action=download solr-9.6.0.tgz
tar xzf solr-9.6.0.tgz
sudo bash solr-9.6.0/bin/install_solr_service.sh solr-9.6.0.tgz
```

Change /etc/default/solr.in.sh so solr listens to 0.0.0.0

```shell
# Sets the network interface the Solr binds to. To prevent administrators from
# accidentally exposing Solr more widely than intended, this defaults to 127.0.0.1.
# Administrators should think carefully about their deployment environment and
# set this value as narrowly as required before going to production. In
# environments where security is not a concern, 0.0.0.0 can be used to allow
# Solr to accept connections on all network interfaces.
SOLR_JETTY_HOST="0.0.0.0"
```