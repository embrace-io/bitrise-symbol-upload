#!/bin/bash
set -ex

EMBRACE_APP=${embrace_app} EMBRACE_API_TOKEN=${embrace_api_token} ${BITRISE_STEP_SOURCE_DIR}/bin/macos/$(uname -m)/ios-upload --dsym ${dsym_path}
