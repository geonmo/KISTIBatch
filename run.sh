#!/bin/bash

export SCRAM_ARCH=slc6_amd64_gcc630
source /cvmfs/cms.cern.ch/cmsset_default.sh
scram p CMSSW CMSSW_9_4_13
cd CMSSW_9_4_13/src
eval `scramv1 runtime -sh`
cd -
echo $(hostname)
pwd
cp x509* /tmp
voms-proxy-info -all
./getZMass.py $1
