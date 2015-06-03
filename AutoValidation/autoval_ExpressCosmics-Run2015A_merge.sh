#!/bin/bash
aklog

echo "Setup environment"
source /afs/cern.ch/cms/cmsset_default.sh

cd /afs/cern.ch/cms/CAF/CMSCOMM/COMM_CSC/CSCVAL/AUTOVAL/CMSSW_7_4_2/src/CSCValidationRunning/AutoValidation

eval `scramv1 runtime -sh`
scram b

echo "Initiate merge script"
./run_cscval.py /ExpressCosmics/Run2015A-Express-v1/FEVT GR_E_V47 -ro -t HLT_L1SingleMuOpen_v6 HLT_L1SingleMuBeamHalo_v1
