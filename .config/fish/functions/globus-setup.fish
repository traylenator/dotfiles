function globus-setup
  openssl pkcs12 -in {$HOME}/.globus/myCertificate.p12 -clcerts -nokeys -out {$HOME}/.globus/usercert.pem
  openssl pkcs12 -in {$HOME}/.globus/myCertificate.p12 -nocerts -out  {$HOME}/.globus/userkey.pem
  voms-proxy-init --voms ops
  set -l PROXY /tmp/x509up_u(id -u)
  myproxy-init -c 9000 -t 72 -k NagiosRetrieve-ETF-ops -s myproxy.cern.ch -l nagios -x -Z "/DC=ch/DC=cern/OU=Organic Units/OU=Users/CN=samtf/CN=555091/CN=Robot: SAM Test Framework" -C $PROXY -y $PROXY
end
