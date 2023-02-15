#!/bin/bash

# 增加 default-settings
rm -rf default-settings
\cp -rfp ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/default-settings default-settings

# 增加应用商店
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/istore/trunk/luci/luci-lib-taskd
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/istore/trunk/luci/luci-lib-xterm
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/istore/trunk/luci/taskd
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-ddnsto
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-istorex
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-linkease
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-quickstart
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-unishare
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-lib-iform
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages/trunk/multimedia/ffmpeg-remux
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages/trunk/network/services/ddnsto
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages/trunk/network/services/linkease
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages/trunk/network/services/quickstart
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages/trunk/network/services/unishare
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
svn co https://github.com/linkease/nas-packages/trunk/network/services/webdav2
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-cpufreq
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-cpufreq
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-cpulimit
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-cpulimit/cpulimit-ng 
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-cpulimit/luci-app-cpulimit
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-ramfree
git clone --depth=1 https://github.com/chinaboy2345/luci-app-ramfree
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# filebrowser
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-fileBrowser
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-diskman
svn co https://github.com/lisaac/luci-app-diskman/trunk/applications/luci-app-diskman
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
# luci-app-argon-config
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# speedtestpp
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/speedtestpp
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-vsftpd
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-vsftpd
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# homebox
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-homebox
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# webdav
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-webdav
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# alist
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-alist
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-homeassistant
svn co https://github.com/linkease/openwrt-app-actions/trunk/applications/luci-app-homeassistant
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# op-oaf
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-oaf
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-eqos
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/luci-app-eqos
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-serverchan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# k3
https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/k3
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-netdata
https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/luci-app-netdata
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# luci-app-ttnode
git clone --depth=1 https://github.com/jerrykuku/luci-app-ttnode
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# 增加 helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# 增加 luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# 增加 luci-app-vssr
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf

# 增加 clash
rm -rf luci-app-clash
git clone --depth=1 https://github.com/frainzy1477/luci-app-clash.git
rm -rf luci-app-clash/root/usr/share/clash/yacd
wget -c  https://github.com/haishanh/yacd/releases/latest/download/yacd.tar.xz -O yacd.tar.xz
cp -rfp public luci-app-clash/root/usr/share/clash/yacd
rm -rf yacd.tar.xz
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/luasrc/view/clash/status.htm > luci-app-clash/luasrc/view/clash/status.htm
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/init.d/clash > luci-app-clash/root/etc/init.d/clash
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/config/clash > luci-app-clash/root/etc/config/clash
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/check_clashtun_core_version.sh > luci-app-clash/root/usr/share/clash/check_clashtun_core_version.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/check_core_version.sh > luci-app-clash/root/usr/share/clash/check_core_version.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/check_dtun_core_version.sh > luci-app-clash/root/usr/share/clash/check_dtun_core_version.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/check_luci_version.sh > luci-app-clash/root/usr/share/clash/check_luci_version.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/clash-watchdog.sh > luci-app-clash/root/usr/share/clash/clash-watchdog.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/conection.sh > luci-app-clash/root/usr/share/clash/conection.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/core_download.sh > luci-app-clash/root/usr/share/clash/core_download.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/yum_change.sh > luci-app-clash/root/usr/share/clash/yum_change.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/chinaipset.sh > luci-app-clash/root/usr/share/clash/chinaipset.sh
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/luci-app-clash/share/clash/restore.sh > luci-app-clash/root/usr/share/clash/restore.sh
find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
# find ${GITHUB_WORKSPACE}/uola-custom/ -type d -regextype posix-extended -regex '.*.(git|github|svn)' | xargs -exec rm -rf
# find ${GITHUB_WORKSPACE}/uola-custom/ -type f -regextype posix-extended -regex '.*.(LICENSE|README|MAINTAINERS)' | xargs -exec rm -rf

# LICENSE和README
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/README.md > README.md
