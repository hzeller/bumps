#!/bin/bash
##

PROJECT=bumps

function link_if_exists() {
    if [ -r $1 ] ; then
	ln -sf $1 $2
    fi
}

if [ $# -ne 1 ] ; then
    echo "usage: $0 <absolute-gerber-dir>"
    echo "Given gerber files with KiCad naming (*.pho), creates zipfile with gerber-files"
    echo "usable for OSH-Park"
    exit 1
fi

INDIR=$1
OUTDIR=/tmp/bumps.gerber
mkdir -p $OUTDIR

IF=$INDIR/${PROJECT}
OF=$OUTDIR/${PROJECT}

cd $OUTDIR

# Create board gerber files.
link_if_exists ${IF}-F_Cu.pho ${OF}.GTL
link_if_exists ${IF}-B_Cu.pho ${OF}.GBL
link_if_exists ${IF}-F_Mask.pho ${OF}.GTS
link_if_exists ${IF}-B_Mask.pho ${OF}.GBS
link_if_exists ${IF}-F_SilkS.pho ${OF}.GTO
link_if_exists ${IF}-Edge_Cuts.pho ${OF}.GKO
link_if_exists ${IF}.drl ${OF}.XLN

zip ${INDIR}/osh-board.zip ${PROJECT}.*

# Create stencil gerber files.
rm $OUTDIR/*
# oshstencils.com
link_if_exists ${IF}-F_Paste.pho ${OF}.GTP

zip ${INDIR}/osh-stencil.zip ${PROJECT}.*

cd /
rm -rf $OUTDIR

