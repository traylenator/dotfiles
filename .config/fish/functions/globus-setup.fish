function globus-setup
  openssl pkcs12 -in {$HOME}/.globus/myCertificate.p12 -clcerts -nokeys -out {$HOME}/.globus/usercert.pem
  openssl pkcs12 -in {$HOME}/.globus/myCertificate.p12 -nocerts -out  {$HOME}/.globus/userkey.pem
  myproxy-init -s myproxy.cern.ch -l nagios -c 0 -r "/DC=ch/DC=cern/OU=Organic Units/OU=Users/CN=samtf/CN=555091/CN=Robot: SAM Test Framework" -n -k NagiosRetrieve-ETF-ops
end
