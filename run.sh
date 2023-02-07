#!/bin/bash

# Retrieve the full command from container's wrapper
CMD_PREFIX=$(docker run -it --rm --entrypoint=/app/wrapper.sh thenets/cli-test)

# Sanitize the command prefix
# Remove '$' and '\r'
CMD_PREFIX_CLEAN=$(echo $CMD_PREFIX | sed 's/"/\\"/g' | sed 's/\$//g' | sed 's/\r//g')

# set -ex

# Run
${CMD_PREFIX_CLEAN} $@
