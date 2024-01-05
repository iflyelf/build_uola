#!/bin/bash

# 增加 default-settings
rm -rf default-settings
# \cp -rfp ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/default-settings default-settings

# 增加应用商店
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store
svn co https://github.com/linkease/istore/trunk/luci/luci-lib-taskd
svn co https://github.com/linkease/istore/trunk/luci/luci-lib-xterm
svn co https://github.com/linkease/istore/trunk/luci/taskd
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-ddnsto
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-istorex
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-linkease
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-quickstart
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-unishare
svn co https://github.com/linkease/nas-packages-luci/trunk/luci/luci-lib-iform
svn co https://github.com/linkease/nas-packages/trunk/multimedia/ffmpeg-remux
svn co https://github.com/linkease/nas-packages/trunk/network/services/ddnsto
svn co https://github.com/linkease/nas-packages/trunk/network/services/linkease
svn co https://github.com/linkease/nas-packages/trunk/network/services/quickstart
svn co https://github.com/linkease/nas-packages/trunk/network/services/unishare
svn co https://github.com/linkease/nas-packages/trunk/network/services/webdav2

# 自动装备
# svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/emortal/autocore
# svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/emortal/automount
svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/emortal/autosamba
svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/emortal/ipv6-helper

# luci-app-cpulimit
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-cpulimit/cpulimit-ng 
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-cpulimit/luci-app-cpulimit

# luci-app-ramfree
git clone --depth=1 https://github.com/chinaboy2345/luci-app-ramfree

# filebrowser
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-fileBrowser

# luci-app-diskman
svn co https://github.com/lisaac/luci-app-diskman/trunk/applications/luci-app-diskman

# luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon

# luci-app-argon-config
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config

# speedtestpp
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/speedtestpp

# luci-app-vsftpd
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-vsftpd

# homebox
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-homebox

# webdav
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-webdav

# alist
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-alist

# aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav

# luci-app-homeassistant
svn co https://github.com/linkease/openwrt-app-actions/trunk/applications/luci-app-homeassistant

# op-oaf
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/op-oaf

# luci-app-eqos
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/luci-app-eqos

# luci-app-serverchan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan

# k3
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/k3

# luci-app-netdata
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/luci-app-netdata

# luci-app-ttnode
git clone --depth=1 https://github.com/jerrykuku/luci-app-ttnode

# 增加 helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git

# 增加 luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git

# 增加 luci-app-vssr
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git

# 增加 luci-app-openclash
rm -rf luci-app-openclash
git clone --depth 1 -b dev https://github.com/vernesong/OpenClash.git && mv -f OpenClash/luci-app-openclash ./ ; rm -Rf OpenClash

find ${GITHUB_WORKSPACE}/uola-custom/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf 

# LICENSE和README
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/custom/${matrix_target}/server/README.md > README.md
