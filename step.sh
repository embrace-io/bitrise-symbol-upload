#!/bin/bash
set -ex

${BITRISE_STEP_SOURCE_DIR}/bin/macos/arm64/ios-upload --dsym ${BITRISE_DSYM_PATH}
