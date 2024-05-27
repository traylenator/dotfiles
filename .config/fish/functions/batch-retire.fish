# roger update --appstate draining --message "{\"JobDate\": $(date +%s), \"TargetDate\": $(( $(date +%s) + 3600 * 24 )), \"Reboot\": \"asap\"}" b9g03p1541.cern.ch
#
function batch-retire
  set NOW (date +%s)
  set WHEN (math $NOW + 3600 \* 24)
  set MESSAGE {\"JobDate\": "(date +%s)", \"TargetDate\": "(math (date +%s) + 3600 \* 24) ", \"Reboot\": \"asap\"}
  set MESSAGE "{\"JobDate\": $NOW, \"TargetDate\": $WHEN, \"Reboot\": \"asap\"}"
  echo $MESSAGE | jq .
  roger update --appstate draining --message $MESSAGE $argv
end
