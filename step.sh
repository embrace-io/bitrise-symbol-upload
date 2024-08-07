#!/bin/bash
set -ex

DOWNLOADS_URL=https://downloads.embrace.io
SUPPORT_TOOL=embrace_support.zip

curl -s -o ${SUPPORT_TOOL} ${DOWNLOADS_URL}/${SUPPORT_TOOL}
curl -s -o ${SUPPORT_TOOL}.sha256 ${DOWNLOADS_URL}/${SUPPORT_TOOL}.sha256

if /usr/bin/shasum -a 256 -c ${SUPPORT_TOOL}.sha256; then
  unzip -o ${SUPPORT_TOOL} && rm ${SUPPORT_TOOL}
else
  echo "Checksum verification of ${SUPPORT_TOOL} failed, aborting."
  exit 1
fi

EMBRACE_APP=${embrace_app} EMBRACE_API_TOKEN=${embrace_api_token} ./embrace_symbol_upload.darwin --dsym ${dsym_path}
