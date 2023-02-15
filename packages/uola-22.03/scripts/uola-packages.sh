#!/bin/bash


# web超时时间
sed -i '$a cgi-timeout = 300' net/uwsgi/files-luci-support/luci-webui.ini

# 应用补丁
#find "${GITHUB_WORKSPACE}/packages/${matrix_target}/patches" -type f -name '*.patch' -print0 | sort -z | xargs -I % -t -0 -n 1 sh -c "cat '%'  | patch -d './' -p1 -E --forward --no-backup-if-mismatch"

# 增加 smartdns
rm -rf net/smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns.git net/smartdns
mkdir -p net/smartdns/conf/
cat ${GITHUB_WORKSPACE}/packages/${matrix_target}/server/smartdns/conf/smartdns.conf > net/smartdns/conf/smartdns.conf
cat ${GITHUB_WORKSPACE}/packages/${matrix_target}/server/smartdns/conf/custom.conf > net/smartdns/conf/custom.conf
wget https://raw.githubusercontent.com/danxiaonuo/gwf/main/smartdns/smartdns_xiaonuo_domain.conf -O net/smartdns/conf/smartdns_xiaonuo_domain.conf
wget https://raw.githubusercontent.com/danxiaonuo/gwf/main/smartdns/smartdns_gfw_domain.conf -O net/smartdns/conf/smartdns_gfw_domain.conf
sed -i -e "s@\$(PKG_BUILD_DIR)/package/openwrt/custom.conf@\$(CURDIR)/conf/custom.conf@g" net/smartdns/Makefile
sed -i -e "s@\$(PKG_BUILD_DIR)/package/openwrt/files/etc/config/smartdns@\$(CURDIR)/conf/smartdns.conf@g" net/smartdns/Makefile
sed -i '/conffiles/a\/etc/smartdns/smartdns_gfw_domain.conf' net/smartdns/Makefile
sed -i '/conffiles/a\/etc/smartdns/smartdns_xiaonuo_domain.conf' net/smartdns/Makefile
sed -i '/blacklist-ip.conf/a\\t$(INSTALL_CONF) $(CURDIR)/conf/smartdns_gfw_domain.conf $(1)/etc/smartdns/smartdns_gfw_domain.conf' net/smartdns/Makefile
sed -i '/smartdns_gfw_domain.conf/a\\t$(INSTALL_CONF) $(CURDIR)/conf/smartdns_xiaonuo_domain.conf $(1)/etc/smartdns/smartdns_xiaonuo_domain.conf' net/smartdns/Makefile

find ${GITHUB_WORKSPACE}/uola-packages/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf 

# LICENSE和README
cat ${GITHUB_WORKSPACE}/packages/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/packages/${matrix_target}/server/README.md > README.md
