#!/bin/bash
set -ex

${BITRISE_STEP_SOURCE_DIR}/bin/macos/arm64/ios-upload --dsym ${BITRISE_DSYM_PATH}

#
# --- Exit codes:
# The exit code of your Step is very important. If you return
#  with a 0 exit code `bitrise` will register your Step as "successful".
# Any non zero exit code will be registered as "failed" by `bitrise`.
