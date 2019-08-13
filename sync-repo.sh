#!/bin/bash
cd "$(dirname "$0")"

WORKDIR="${PWD}"
REPODIR="${PWD}/repo"
REMOTEDIR="/var/www/trashcan-gaming/vaporos"
REMOTEHOST="docker"

/usr/bin/rsync -av ${REPODIR}/ ${REMOTEHOST}:${REMOTEDIR}/
