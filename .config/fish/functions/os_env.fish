function os_env
  set -gx OS_AUTH_TYPE v3fedkerb
  set -gx OS_AUTH_URL "https://keystone.cern.ch/v3"
  set -gx OS_IDENTITY_API_VERSION 3
  set -gx OS_IDENTITY_PROVIDER sssd
  set -gx OS_MUTUAL_AUTH disabled
  set -gx OS_PROJECT_DOMAIN_ID default
  set -gx OS_PROTOCOL kerberos

  switch $argv
    case 'linuxvms'
      set -gx OS_REGION_NAME cern
      set -gx OS_PROJECT_NAME "IT Linux Support - Test VMs"
    case 'aims'
      set -gx OS_REGION_NAME cern
      set -gx OS_PROJECT_NAME "AIMS service"
    case 'aimscrit'
      set -gx OS_REGION_NAME cern
      set -gx OS_PROJECT_NAME "AIMS service - Critical"
    case 'nag'
      set -gx OS_REGION_NAME cern
      set -gx OS_PROJECT_NAME "cernnag"
    case 'cern'
      set -gx OS_REGION_NAME cern
    case 'pdc'
      set -gx OS_REGION_NAME pdc
    case 'me'
      set -gx OS_PROJECT_NAME "Personal straylen"
    case 'acron'
      set -gx OS_PROJECT_NAME "IT ACRON"
    case 'hammer'
      set -gx OS_PROJECT_NAME "IT HammerCloud"
    case 'plus'
      set -gx OS_PROJECT_NAME "IT LxPlus"
    case 'etf'
      set -gx OS_PROJECT_NAME "IT ETF"
    case 'pluscrit'
      set -gx OS_PROJECT_NAME "IT LxPlus Critical"
    case 'metal'
      set -gx OS_PROJECT_NAME "IT LxPlus Metal"
    case 'gpu'
      set -gx OS_PROJECT_NAME "IT LxPlus GPU"
    case 'arm'
      set -gx OS_PROJECT_NAME "IT LxPlus ARM"
    case 'config'
      set -gx OS_PROJECT_NAME "IT Configuration Management Services"
    case 'configpdc'
      set -gx OS_PROJECT_NAME "IT Configuration Management Services - PDC"
      set -gx OS_REGION_NAME pdc
    case 'configcrit'
      set -gx OS_PROJECT_NAME "IT Configuration Management Services - critical area"
    case '*'
      echo 'linuxvms, me'
  end
end
