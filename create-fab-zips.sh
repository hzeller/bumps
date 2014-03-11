#!/bin/bash
##

PROJECT=bumps

if [ $# -ne 1 ] ; then
    echo "usage: $0 <gerber-dir>"
    echo "Given gerber files with KiCad naming (*.pho), creates zipfile with gerber-files"
    echo "usable for OSH-Park"
    exit 1
fi

INDIR=$1

IF=$INDIR/${PROJECT}

# for osh park
zip board-fab.zip ${IF}*.{gbr,gbl,gtl,gbs,gts,gto,drl}

# for osh stencil
zip stencil-fab.zip ${IF}*.{gbr,gtp}
