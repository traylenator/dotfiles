function FindProxyForURL(url, host) {
    if (dnsDomainIs(host, ".cern.ch")) {
        return "SOCKS5 127.0.0.1:8080";
    }
    return "DIRECT";
}
