#!/bin/bash

# find ${GITHUB_WORKSPACE}/uola-os/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
# find ${GITHUB_WORKSPACE}/uola-os/ -type f -regextype posix-extended -regex '.*.(LICENSE|README|MAINTAINERS)' | xargs -exec rm -rf

# LICENSE和README
# cat ${GITHUB_WORKSPACE}/uola-os/${matrix_target}/server/LICENSE > LICENSE
# cat ${GITHUB_WORKSPACE}/uola-os/${matrix_target}/server/README.md > README.md
