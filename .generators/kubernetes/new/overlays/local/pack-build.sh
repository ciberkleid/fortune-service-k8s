---
actions:
  to: pack-build.sh
---
#!/usr/bin/env bash
set -euox pipefail
readonly PROG_DIR=$(readlink -m $(dirname $0))

echo ${IMAGES[@]} && pack build ${IMAGES[0]} --builder cloudfoundry/cnb:bionic