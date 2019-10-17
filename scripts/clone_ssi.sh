#!/bin/bash

usage()
{
   echo "USAGE: `basename ${0}` <package>"
   echo "       will clone build-framework-<package>-ssi-build"
}

die()
{
  echo "$1"; exit 2
}

package=${1}

if [ -z ${package} ]
then
   echo "ERROR: please specify the package"
   usage
   exit 1
fi

git clone ssh://p-build-framework@cdcvs.fnal.gov/cvs/projects/build-framework-${package}-ssi-build ${package}-ssi-build || die "ERROR: cannot clone ${package}-ssi-build"

exit 0
