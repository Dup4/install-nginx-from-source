#! /bin/bash

TOP_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

# shellcheck disable=SC1091
source "${TOP_DIR}/utils.sh"

VERSION="${1}"

if [[ -z "${VERSION}" ]]; then
    ERROR "usage: ./download.sh \$VERSION"
    exit 1
fi

# http://nginx.org/en/download.html
wget "http://nginx.org/download/nginx-${VERSION}.tar.gz" -O "${TOP_DIR}/ninx-${VERSION}.tar.gz"
