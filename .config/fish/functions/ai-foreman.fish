function ai-foreman
  podman run --network=host  -v  /run/.heim_org.h5l.kcm-socket:/run/.heim_org.h5l.kcm-socket -e HTTPS_PROXY=socks5://127.0.0.1:8000  -e KRB5CCNAME=KCM:  gitlab-registry.cern.ch/ai-config-team/ai-tools ai-foreman $argv
end
