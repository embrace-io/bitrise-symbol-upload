#!/bin/bash
set -ex

${BITRISE_STEP_SOURCE_DIR}/bin/macos/$(uname -m)/ios-upload --dsym ${BITRISE_DSYM_PATH}
