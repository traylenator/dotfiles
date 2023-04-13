function pluslogin
  mco rpc shell run command="pgrep -fa -u $argv" -T lxplus  --dt 3 -F hostgroup_1=nodes -F hostgroup_2=login --json | jq -r '.[]|select(.data.exitcode==0)|"\(.sender)\n\(.data.stdout)"'
end


