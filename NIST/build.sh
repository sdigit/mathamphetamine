#!/bin/bash
if [ "${CC}" = "" ]
then
    CC="icc"
fi
TD=`mktemp -d`
chmod 0700 ${TD}
CURDIR=$(pwd -P)
SRCDIR=$(pwd -P)/src
cd ${TD}
cmake -DCMAKE_C_COMPILER=${CC} ${SRCDIR}
env VERBOSE=YES make
cp ${TD}/assess ${CURDIR}
rm -rf ${TD}
