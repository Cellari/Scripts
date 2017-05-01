#!/bin/sh

TR_TORRENT_DIR=${TR_TORRENT_DIR:-$1}
TR_TORRENT_NAME=${TR_TORRENT_NAME:-$2}
TR_TORRENT_ID=${TR_TORRENT_ID:-$3}

#chmod -R 0777 $TR_TORRENT_DIR
destinationPath="${TR_TORRENT_DIR}/"$(python parse-torrent-name.py "${TR_TORRENT_NAME}" 
2>&1)
transmission-remote -t "${TR_TORRENT_ID}" --move "${destinationPath}"

