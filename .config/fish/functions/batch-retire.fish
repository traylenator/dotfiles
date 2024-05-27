# roger update --appstate draining --message "{\"JobDate\": $(date +%s), \"TargetDate\": $(( $(date +%s) + 3600 * 24 )), \"Reboot\": \"asap\"}" b9g03p1541.cern.ch
#
function batch-retire
  #git clone https://:\@gitlab.cern.ch:8443/ai/it-puppet-"$argv".git "$argv"
  roger update --appstate draining --message "{\"JobDate\": (date +%s), \"TargetDate\": (( math (date +%s) + (3600 * 24 ))), \"Reboot\": \"asap\"}" $argv
end
