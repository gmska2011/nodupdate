#!/bin/bash

MAINDIR="/app"
UPDATEDIR="/app/nod"

# NOD UPDATE SCRIPT
$MAINDIR/MirrorTool --mirrorType regular --intermediateUpdateDirectory $UPDATEDIR/mirrorTemp \
		    --offlineLicenseFilename $MAINDIR/license/mirror.lf --outputDirectory $UPDATEDIR/mirror

# V5
#/usr/bin/rsync -r --delete-before -t --size-only -l  $UPDATEDIR/mirror/eset_upd/v5/* $MAINDIR/nodupd/
# V6
#/usr/bin/rsync -r --delete-before -t --size-only -l  $UPDATEDIR/mirror/eset_upd/ep6/* $MAINDIR/nodupd/v6/

# CHMOD
/bin/chmod -R 777 $UPDATEDIR/

echo "UPDATE COMPLETE"
#/home/scripts/nod32/sync/sync.sh
