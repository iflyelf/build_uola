#!/bin/bash

find ${GITHUB_WORKSPACE}/uola-telephony/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf

# LICENSE和README
cat ${GITHUB_WORKSPACE}/telephony/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/telephony/${matrix_target}/server/README.md > README.md
