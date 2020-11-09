
# Openstack
set -gx OS_AUTH_TYPE v3fedkerb
set -gx OS_AUTH_URL "https://keystone.cern.ch/v3"
set -gx OS_IDENTITY_API_VERSION 3
set -gx OS_IDENTITY_PROVIDER sssd
set -gx OS_MUTUAL_AUTH disabled
set -gx OS_PROJECT_DOMAIN_ID default
set -gx OS_PROTOCOL kerberos
set -gx OS_REGION_NAME cern
set -gx OS_PROJECT_NAME "Personal straylen"

set -g fish_greeting
# Start ssh-agent
fish_ssh_agent
