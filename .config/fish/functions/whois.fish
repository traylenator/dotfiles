function whois

  /usr/bin/ldapsearch -LLL -x -h "xldap.cern.ch" -b "OU=Users,OU=Organic Units,DC=cern,DC=ch" "(&(objectClass=user)(|(sAMAccountName=$argv)(displayName=$argv)))";
end

