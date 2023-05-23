# https://:@gitlab.cern.ch:8443/ai/it-puppet-hostgroup-openlab_systems.git
function ai-clone
  git clone https://:\@gitlab.cern.ch:8443/ai/it-puppet-"$argv".git "$argv"
end
