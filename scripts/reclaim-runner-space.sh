#!/bin/bash

set -euxo pipefail


# as of 2024-04-04
# discovered via https://github.com/josephcopenhaver/gha-debian-tmate
#
# :/opt$ du -sh *
# 150M    actionarchivecache
# 747M    az
# 12K     containerd
# 327M    google
# 8.4G    hostedtoolcache
# 735M    microsoft
# 732K    mssql-tools
# 421M    pipx
# 4.0K    pipx_bin
# 16K     post-generation
# 119M    runner
# 180M    runner-cache
# 8.0K    vsts
#
# :/$ 2>&1 du -sh * | grep -v 'du:' | grep G
# 1.5G    home
# 4.1G    mnt
# 11G     opt
# 35G     usr
#
# :/usr$ du -sh *
# 867M    bin
# 4.0K    games
# 181M    include
# 6.9G    lib
# 15M     lib32
# 4.0K    lib64
# 832M    libexec
# 4.0K    libx32
# 20G     local
# 91M     sbin
# 5.6G    share
# 152M    src
#
# :/usr/local$ du -sh *
# 224M    aws-cli
# 179M    aws-sam-cli
# 1.3G    bin
# 49M     doc
# 4.0K    etc
# 4.0K    games
# 56M     include
# 579M    julia1.10.2
# 10G     lib
# 3.4M    man
# 164M    n
# 28K     sbin
# 13M     sessionmanagerplugin
# 1.9G    share
# 111M    sqlpackage
# 4.0K    src
#
# :/usr/local/lib$ du -sh *
# 8.9G    android
# 16M     lein
# 0       libsourcekitdInProc.so
# 1.2G    node_modules
# 1.6M    python3.10
# 8.0K    R


cd /opt
find . \
    \
    -maxdepth 1 -mindepth 1 \
    \
    ! -path ./containerd \
    ! -path ./actionarchivecache \
    ! -path ./runner \
    ! -path ./runner-cache \
    \
    -exec rm -rf {} \;


# missing permissions required to remove files
#
# cd /usr/local
# rm -rf aws-cli aws-sam-cli julia*


# missing permissions required to remove files
#
# cd /usr/local/lib
# rm -rf android
