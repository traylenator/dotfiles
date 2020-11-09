function os_env
  set -gx OS_AUTH_TYPE v3fedkerb
  set -gx OS_AUTH_URL "https://keystone.cern.ch/v3"
  set -gx OS_IDENTITY_API_VERSION 3
  set -gx OS_IDENTITY_PROVIDER sssd
  set -gx OS_MUTUAL_AUTH disabled
  set -gx OS_PROJECT_DOMAIN_ID default
  set -gx OS_PROTOCOL kerberos
  set -gx OS_REGION_NAME cern

  switch $argv
    case 'me'
      set -gx OS_PROJECT_NAME "Personal straylen"
    case 'plus'
      set -gx OS_PROJECT_NAME "IT LxPlus"
    case 'config'
      set -gx OS_PROJECT_NAME "IT Configuration Management Services"
    case '*'
      echo 'plus , me or  ..'
  end
end
