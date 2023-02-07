#!/bin/sh

echo "docker run -it --rm -v /tmp/container_persistent:/persistent:rw --entrypoint=/app/cli.sh thenets/cli-test"
