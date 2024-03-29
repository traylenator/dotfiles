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
      set -gx OS_REGION_NAME "cern"
    case 'acron'
      set -gx OS_PROJECT_NAME "IT ACRON"
      set -gx OS_REGION_NAME "cern"
    case 'hammer'
      set -gx OS_PROJECT_NAME "IT HammerCloud"
      set -gx OS_REGION_NAME "cern"
    case 'plus'
      set -gx OS_PROJECT_NAME "IT LxPlus"
      set -gx OS_REGION_NAME "cern"
    case 'etf'
      set -gx OS_PROJECT_NAME "IT ETF"
      set -gx OS_REGION_NAME "cern"

    case 'pluscrit'
      set -gx OS_PROJECT_NAME "IT LxPlus Critical"
      set -gx OS_REGION_NAME "cern"
    case 'metal'
      set -gx OS_PROJECT_NAME "IT LxPlus Metal"
    case 'gpu'
      set -gx OS_PROJECT_NAME "IT LxPlus GPU"
    case 'armnext'
      set -gx OS_PROJECT_NAME "IT LxPlus ARM"
      set -gx OS_REGION_NAME "next"
    case 'arm'
      set -gx OS_PROJECT_NAME "IT LxPlus ARM"
      set -gx OS_REGION_NAME "cern"
    case 'config'
      set -gx OS_PROJECT_NAME "IT Configuration Management Services"
    case 'configcrit'
      set -gx OS_PROJECT_NAME "IT Configuration Management Services - critical area"
    case '*'
      echo 'plus , pluscrit, arm, metal, me, config or configcrit '
  end
end
