function pubplusprocs
  plusprocs $argv | tee /tmp/$argv-(date +%Y%m%d).txt
  scp /tmp/$argv-(date +%Y%m%d).txt straylen@lxplus9.cern.ch:/eos/home-s/straylen/www/users/.
  echo ""
  echo https://cern.ch/straylen/users/$argv-(date +%Y%m%d).txt
end


