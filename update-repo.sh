#!/bin/bash
cd "$(dirname "$0")"

WORKDIR="${PWD}"
PACKAGEDIR="${PWD}/packages"
REPODIR="${PWD}/repo"
DISTNAME="buster"

reprepro -Vb ${REPODIR} includedeb ${DISTNAME} ${PACKAGEDIR}/*.deb
