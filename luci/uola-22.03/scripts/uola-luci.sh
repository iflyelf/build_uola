#!/bin/bash


# 应用补丁
# find "${GITHUB_WORKSPACE}/luci/${matrix_target}/patches" -type f -name '*.patch' -print0 | sort -z | xargs -I % -t -0 -n 1 sh -c "cat '%'  | patch -d './' -p1 -E --forward --no-backup-if-mismatch"

# find ${GITHUB_WORKSPACE}/uola-luci/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
# find ${GITHUB_WORKSPACE}/uola-luci/ -type f -regextype posix-extended -regex '.*.(LICENSE|README|MAINTAINERS)' | xargs -exec rm -rf

# LICENSE和README
cat ${GITHUB_WORKSPACE}/luci/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/luci/${matrix_target}/server/README.md > README.md
