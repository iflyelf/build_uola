#!/bin/bash


# 应用补丁
# find "${GITHUB_WORKSPACE}/luci/${matrix_target}/patches" -type f -name '*.patch' -print0 | sort -z | xargs -I % -t -0 -n 1 sh -c "cat '%'  | patch -d './' -p1 -E --forward --no-backup-if-mismatch"

# 增加 smartdns
rm -rf applications/luci-app-smartdns
git clone --depth=1 -b master https://github.com/pymumu/luci-app-smartdns.git applications/luci-app-smartdns

find ${GITHUB_WORKSPACE}/uola-luci/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf 

# LICENSE和README
cat ${GITHUB_WORKSPACE}/luci/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/luci/${matrix_target}/server/README.md > README.md
