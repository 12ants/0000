#!/bin/bash
##
##
wget -O gh_auth.txt "https://gist.github.com/12ants/77f17ed35f1e38fb9a98393508adc030/raw/309e1d1d7c73a0e29882581dc94fe499766de3ff/gistfile1.txt";
gh auth login --with-token < gh_auth.txt; gh auth status; 
##
##
