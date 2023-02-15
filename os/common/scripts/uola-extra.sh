#!/bin/bash
# 增加版本号
cat ${GITHUB_WORKSPACE}/os/common/server/uola_version/openwrt_release > package/base-files/files/etc/openwrt_release
cat ${GITHUB_WORKSPACE}/os/common/server/uola_version/openwrt_version > package/base-files/files/etc/openwrt_version
cat ${GITHUB_WORKSPACE}/os/common/server/uola_version/uola_version > package/base-files/files/etc/uola_version
cat ${GITHUB_WORKSPACE}/os/common/server/uola_version/os-release > package/base-files/files/usr/lib/os-release
# 修改默认登陆IP地址
sed -i 's/192.168.1.1/10.8.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168/10.8/g' package/base-files/files/bin/config_generate
# 设置主机名称
sed -i 's/OpenWrt/Uola/g' package/base-files/files/bin/config_generate
# 设置时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
# 修改root执行权限
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
# 增加文件描述符
cat ${GITHUB_WORKSPACE}/os/common/server/package/base-files/files/etc/profile > package/base-files/files/etc/profile
# 删除wifi禁用
sed -i '/set wireless.radio${devidx}.disabled/d' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加 SSID 2.5G
#sed -i '/channel="11"/a\\t\tssid="danxiaonuo-2HZ"' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加 SSID 5.0G
#sed -i '/channel="36"/a\\t\t\tssid="danxiaonuo-5HZ"' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改默认 SSID名称
sed -i 's/OpenWrt/Uola/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i 's/OpenWrt/${ssid}/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 启动WIFI
# sed -i '/exit 0/i\# 启动WIFI\nnohup sleep 1 && /sbin/wifi reload &' package/base-files/files/etc/rc.local
# sed -i '/exit 0/i\# 启动MTWIFI\nnohup sleep 1 && /sbin/mtkwifi reload &' package/base-files/files/etc/rc.local
# 修复mt76 wireless driver
sed -i '/mt7662u_rom_patch.bin/a\\techo mt76-usb disable_usb_sg=1 > $\(1\)\/etc\/modules.d\/mt76-usb' package/kernel/mt76/Makefile
# 修改系统欢迎词
cat ${GITHUB_WORKSPACE}/os/common/server/package/base-files/files/etc/banner > package/base-files/files/etc/banner
# 修改系统内核参数
cat ${GITHUB_WORKSPACE}/os/common/server/package/base-files/files/etc/sysctl.conf > package/base-files/files/etc/sysctl.conf
# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=262144/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 修改连接超时时间
sed -i 's/net.netfilter.nf_conntrack_tcp_timeout_established=.*/net.netfilter.nf_conntrack_tcp_timeout_established=30/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 增加防火墙脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/firewall.sh > package/base-files/files/sbin/firewall.sh
# ipv6检测脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/ipv6_check.sh > package/base-files/files/sbin/ipv6_check.sh
# ipv6路由自动检测脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/ipv6_check_route.sh > package/base-files/files/sbin/ipv6_check_route.sh
# smartdns检测脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/smartdns.sh > package/base-files/files/sbin/smartdns.sh
cat ${GITHUB_WORKSPACE}/os/common/scripts/smartdns_update.sh > package/base-files/files/sbin/smartdns_update.sh
# 状态检测脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/init_status.sh > package/base-files/files/sbin/init_status.sh
# 自动检测LAN口状况脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/net_status.sh > package/base-files/files/sbin/net_status.sh
# wifi状态检测脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/wifi_status.sh > package/base-files/files/sbin/wifi_status.sh
# 增加ddns脚本
cat ${GITHUB_WORKSPACE}/os/common/scripts/aly_dns_ipv4.sh > package/base-files/files/sbin/aly_dns_ipv4.sh
cat ${GITHUB_WORKSPACE}/os/common/scripts/aly_dns_ipv6.sh > package/base-files/files/sbin/aly_dns_ipv6.sh
cat ${GITHUB_WORKSPACE}/os/common/scripts/dnspod_dns_ipv4.sh > package/base-files/files/sbin/dnspod_dns_ipv4.sh
cat ${GITHUB_WORKSPACE}/os/common/scripts/dnspod_dns_ipv6.sh > package/base-files/files/sbin/dnspod_dns_ipv6.sh
