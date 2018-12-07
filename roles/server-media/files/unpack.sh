#!/bin/bash
cd ${TR_TORRENT_DIR}/${TR_TORRENT_NAME}
find . -name '*.rar' -exec unrar e -o- {} \;
find . -name '*.tar.gz' -exec tar -xvzf {} \;
find . -name '*.zip' -exec unzip {} \;