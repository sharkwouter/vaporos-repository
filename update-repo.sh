#!/bin/bash
cd "$(dirname "$0")"

WORKDIR="${PWD}"
PACKAGEDIR="${PWD}/packages"
REPODIR="${PWD}/repo"
DISTNAME="buster"

#add deb packages
reprepro -Vb ${REPODIR} includedeb ${DISTNAME} ${PACKAGEDIR}/*.deb

#include source files
for dsc in `ls ${PACKAGEDIR}/*.dsc`; do
	reprepro -Vb ${REPODIR} includedsc ${DISTNAME} ${dsc}
done
