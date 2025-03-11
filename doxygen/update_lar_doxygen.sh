#!/bin/sh



export DOXVER=doxygen-1.8.11
#export LARNIGHTLY=/grid/fermiapp/larsoft/home/larsoft/code/nightly_build/srcs
export LARHOME=/grid/fermiapp/larsoft/home/larsoft
#export LARPRODUCTS=/grid/fermiapp/products/larsoft
#export LARPRODUCTS=/cvmfs/larsoft.opensciencegrid.org/products
##export LAR_WWW=/nusoft/app/web/htdoc/larsoft/doxsvn

source /cvmfs/larsoft.opensciencegrid.org/setup_larsoft.sh
if [[ -z ${1} ]]; then
  export LARVER=`ups list -aK version larsoft | sort | grep -v rc | grep -v v1_0 | tail -1 | sed -e 's/"//g'`
else
  export LARVER=${1}
fi
setup larsoft ${LARVER} -q e26:debug
status=$?
if [[ ${status} != 0 ]]; then exit 1; fi

echo Running Doxygen for larsoft ${LARVER}
cd ${LARHOME}/doxygen

# remove the previous nights doxygen log
if [ -e lar_doxygen.log ] ; then
    rm lar_doxygen.log
fi

# remove the previous build of the html files
if [ -d dox/html ] ; then
    rm -rf dox/html
    mkdir dox/html
fi

${DOXVER}/bin/doxygen doxylar > lar_doxygen.log

##cd ${LAR_WWW}
##rm -rf ./html
##echo Copying output to ${LAR_WWW}
##cp -r ${LARHOME}/doxygen/dox/html/ ./html
##cp ${LARHOME}/doxygen/doxytags-larsoft.xml ./html/

export LAR_SITE=/pubhosting/sites/c/code-doc.larsoft.org/htdocs/docs/latest
cd ${LAR_SITE} || exit 1
rm -rf ./html
echo "Copying output to ${LAR_SITE}"
cp -r ${LARHOME}/doxygen/dox/html/ ./html
cp ${LARHOME}/doxygen/doxytags-larsoft.xml ./html/

echo done at `date`

exit 0

