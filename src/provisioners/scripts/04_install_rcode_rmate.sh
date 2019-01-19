echo install rcode as an alias for rmate
(
    set -exo pipefail

    curl -fsSL https://raw.github.com/aurora/rmate/master/rmate | install -m 755 /dev/stdin /tmp/rmate.dl.tmp

    # rmate has a non-zero exit code when calling --help and --version
    # so need to account for that
    #
    # test that the binary downloaded correctly
    ( /tmp/rmate.dl.tmp --version 2>&1 || true ) | grep -qE '[0-9]+\.[0-9]+\.[0-9]+'

    # install the binary
    mv /tmp/rmate.dl.tmp /usr/local/bin/rmate
    ln -s rmate /usr/local/bin/rcode
)