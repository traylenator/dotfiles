function FindProxyForURL(url, host) {

    var directHosts = [
        "auth.cern.ch",
        "codimd.web.cern.ch",
        "edh.cern.ch",
        "its.cern.ch",
        "gitlab.cern.ch",
        "mattermost.web.cern.ch",
        "mm-auth.web.cern.ch",
        "linux.cern.ch",
    ];

    if (directHosts.includes(host)) {
        return "DIRECT";
    }

    if (dnsDomainIs(host, ".cern.ch")) {
        return "SOCKS5 127.0.0.1:8080";
    }
    return "DIRECT";
}
