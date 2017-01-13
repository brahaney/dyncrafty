#!/usr/bin/env bash
URL=${2}
DEST=${1}

FILEPATH=$(wget -P ${DEST} --trust-server-names - ${URL} 2>&1 | grep Saving | sed -e "s/\(.*'\)\(.*\)\('.*\)/\\2/")

FILE=$(basename ${FILEPATH})

echo ${URL} > ${DEST}/${FILE}.url.txt

