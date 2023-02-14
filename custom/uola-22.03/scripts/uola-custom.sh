#!/bin/bash


# 增加 default-settings
rm -rf default-settings
\cp -rfp ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/default-settings default-settings

# find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
# find ${GITHUB_WORKSPACE}/uola-custom/ -type f -regextype posix-extended -regex '.*.(LICENSE|README|MAINTAINERS)' | xargs -exec rm -rf

# LICENSE和README
# cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/LICENSE > LICENSE
# cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/README.md > README.md
