function setosenv
  set -Ux OS_AUTH_TYPE v3fedkerb
  set -Ux OS_AUTH_URL "https://keystone.cern.ch/v3"
  set -Ux OS_IDENTITY_API_VERSION 3
  set -Ux OS_IDENTITY_PROVIDER sssd
  set -Ux OS_MUTUAL_AUTH disabled
  set -Ux OS_PROJECT_DOMAIN_ID default
  set -Ux OS_PROTOCOL kerberos
  set -Ux OS_REGION_NAME cern
  set -Ux OS_PROJECT_NAME "Personal straylen"
end
