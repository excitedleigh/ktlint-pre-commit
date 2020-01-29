#!/usr/bin/env sh
mkdir -p .cache
cd .cache
if [ ! -f ktlint ]
then
    curl -sSLO https://github.com/shyiko/ktlint/releases/download/0.29.0/ktlint
    chmod 755 ktlint
fi
cd ..
.cache/ktlint $*
