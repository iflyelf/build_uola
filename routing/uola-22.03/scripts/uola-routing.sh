#!/bin/bash

find ${GITHUB_WORKSPACE}/uola-routing/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf 

# LICENSE和README
cat ${GITHUB_WORKSPACE}/routing/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/routing/${matrix_target}/server/README.md > README.md
