#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

check "version" git  --version
check "gettext" dnf repoquery --installed gettext

cd /tmp && git clone https://github.com/devcontainers/feature-starter.git
cd feature-starter
check "perl" bash -c "git -c grep.patternType=perl grep -q 'a.+b'"

# Report result
reportResults
