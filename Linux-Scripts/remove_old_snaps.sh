#!/bin/bash
# --------------------------------------------------------------------------
# This script removes old revisions of snaps.
# CLOSE ALL SNAPS BEFORE RUNNING THIS.
# It lists disabled snaps, extracts snap name and revision, then removes them.
# --------------------------------------------------------------------------
set -eu

LANG=C snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done
