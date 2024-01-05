#!/bin/bash

# 修改源地址
cat ${GITHUB_WORKSPACE}/os/${matrix_target}/server/feeds.conf.default > feeds.conf.default

# 增加os源
mkdir -p package/xiaonuo
\cp -rfp ${GITHUB_WORKSPACE}/os/${matrix_target}/server/default-settings package/xiaonuo/default-settings

# 修改LuCI 配置
sed -i '/odhcp6c/d' include/target.mk
sed -i '/odhcpd-ipv6only/d' include/target.mk
sed -i 's#dnsmasq#dnsmasq-full#g' include/target.mk
sed -i '/base-files/i\\        default-settings \\' include/target.mk
sed -i '/default-settings/a\\        luci \\' include/target.mk
sed -i '/luci/a\\        luci-compat \\' include/target.mk
sed -i '/luci-compat/a\\        luci-lib-ip \\' include/target.mk
sed -i '/luci-lib-ip/a\\        luci-lib-jsonc \\' include/target.mk
sed -i '/luci-lib-jsonc/a\\        luci-lib-nixio \\' include/target.mk
sed -i '/luci-lib-nixio/a\\        luci-ssl-nginx \\' include/target.mk
sed -i '/luci-ssl-nginx/a\\        luci-theme-argon \\' include/target.mk
sed -i '/luci-theme-argon/a\\        luci-app-argon-config \\' include/target.mk
sed -i '/luci-app-argon-config/a\\        luci-i18n-base-zh-cn \\' include/target.mk
sed -i '/luci-i18n-base-zh-cn/a\\        luci-i18n-opkg-zh-cn \\' include/target.mk
sed -i '/luci-i18n-opkg-zh-cn/a\\        kmod-tun \\' include/target.mk
sed -i '/kmod-tun/a\\        kmod-sdhci \\' include/target.mk
sed -i '/kmod-sdhci/a\\        kmod-mmc \\' include/target.mk
sed -i '/kmod-mmc/a\\        kmod-mmc-spi \\' include/target.mk
sed -i '/kmod-mmc-spi/a\\        kmod-scsi-core \\' include/target.mk
sed -i '/kmod-scsi-core/a\\        kmod-fs-exfat \\' include/target.mk
sed -i '/kmod-fs-exfat/a\\        kmod-fs-ext4 \\' include/target.mk
sed -i '/kmod-fs-ext4/a\\        kmod-fs-vfat \\' include/target.mk
sed -i '/kmod-fs-vfat/a\\        kmod-fs-xfs \\' include/target.mk
sed -i '/kmod-fs-xfs/a\\        kmod-fuse \\' include/target.mk
sed -i '/kmod-fuse/a\\        resize2fs \\' include/target.mk
sed -i '/resize2fs/a\\        swap-utils \\' include/target.mk
sed -i '/swap-utils/a\\        sysfsutils \\' include/target.mk
sed -i '/sysfsutils/a\\        xfs-growfs \\' include/target.mk
sed -i '/xfs-growfs/a\\        xfs-mkfs \\' include/target.mk
sed -i '/xfs-mkfs/a\\        kmod-usb-core \\' include/target.mk
sed -i '/kmod-usb-core/a\\        kmod-usb-storage-extras \\' include/target.mk
sed -i '/kmod-usb-storage-extras/a\\        kmod-usb-storage-uas \\' include/target.mk
sed -i '/kmod-usb-storage-extras/i\\        kmod-usb-storage \\' include/target.mk
sed -i '/kmod-usb-storage-uas/a\\        kmod-usb2 \\' include/target.mk
sed -i '/kmod-usb2/a\\        kmod-usb3 \\' include/target.mk
sed -i '/kmod-usb3/a\\        kmod-usbip \\' include/target.mk
sed -i '/kmod-usbip/a\\        kmod-usbip-client \\' include/target.mk
sed -i '/kmod-usbip-client/a\\        kmod-usbip-server \\' include/target.mk
sed -i '/kmod-usbip-server/a\\        libimobiledevice-utils \\' include/target.mk
sed -i '/libimobiledevice-utils/a\\        libusbmuxd-utils \\' include/target.mk
sed -i '/libusbmuxd-utils/a\\        luci-proto-3g \\' include/target.mk
sed -i '/libusbmuxd-utils/i\\        usbmuxd \\' include/target.mk
sed -i '/luci-proto-3g/a\\        luci-proto-bonding \\' include/target.mk
sed -i '/luci-proto-bonding/a\\        luci-proto-ipv6 \\' include/target.mk
sed -i '/luci-proto-ipv6/a\\        luci-proto-ncm \\' include/target.mk
sed -i '/luci-proto-ncm/a\\        luci-proto-openconnect \\' include/target.mk
sed -i '/luci-proto-openconnect/a\\        luci-proto-ppp \\' include/target.mk
sed -i '/luci-proto-ppp/a\\        luci-proto-relay \\' include/target.mk
sed -i '/luci-proto-relay/a\\        luci-proto-vxlan \\' include/target.mk
sed -i '/luci-proto-vxlan/a\\        kmod-tcp-bbr \\' include/target.mk
sed -i '/kmod-tcp-bbr/a\\        luci-proto-wireguard \\' include/target.mk
sed -i '/luci-proto-wireguard/a\\        luci-app-firewall \\' include/target.mk
sed -i '/luci-app-firewall/a\\        luci-i18n-firewall-zh-cn \\' include/target.mk
sed -i '/luci-i18n-firewall-zh-cn/a\\        luci-app-diskman \\' include/target.mk
sed -i '/luci-app-diskman/a\\        luci-app-wol \\' include/target.mk
sed -i '/luci-app-wol/a\\        luci-i18n-wol-zh-cn \\' include/target.mk
sed -i '/luci-i18n-wol-zh-cn/a\\        luci-app-upnp \\' include/target.mk
sed -i '/luci-app-upnp/a\\        luci-i18n-upnp-zh-cn \\' include/target.mk
sed -i '/luci-i18n-upnp-zh-cn/a\\        luci-app-openclash \\' include/target.mk
sed -i '/luci-app-openclash/a\\        bash \\' include/target.mk
sed -i '/bash/a\\        git \\' include/target.mk
sed -i '/git/a\\        zsh \\' include/target.mk
sed -i '/zsh/a\\        curl \\' include/target.mk
sed -i '/curl/a\\        wget \\' include/target.mk
sed -i '/wget/a\\        vim-fuller \\' include/target.mk
sed -i '/vim-fuller/a\\        ipv6helper \\' include/target.mk
sed -i '/ipv6helper/a\\        lrzsz \\' include/target.mk
sed -i '/lrzsz/a\\        jq \\' include/target.mk
sed -i '/jq/a\\        openssl-util \\' include/target.mk
sed -i '/openssl-util/a\\        openssh-sftp-server \\' include/target.mk
sed -i '/openssh-sftp-server/a\\        openssh-sftp-client \\' include/target.mk
sed -i '/openssh-sftp-client/a\\        libustream-openssl \\' include/target.mk
sed -i '/dnsmasq-full/a\\        smartdns \\' include/target.mk
sed -i '/smartdns/a\        luci-app-smartdns \\' include/target.mk
sed -i '/luci-app-smartdns/a\\        luci-i18n-smartdns-zh-cn \\' include/target.mk

# 增加zsh
mkdir -p package/base-files/files/root
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git package/base-files/files/root/.oh-my-zsh
rm -rf package/base-files/files/root/.oh-my-zsh/.git
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions package/base-files/files/root/.oh-my-zsh/plugins/zsh-autosuggestions
rm -rf package/base-files/files/root/.oh-my-zsh/plugins/zsh-autosuggestions/.git
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git package/base-files/files/root/.oh-my-zsh/plugins/zsh-syntax-highlighting
rm -rf package/base-files/files/root/.oh-my-zsh/plugins/zsh-syntax-highlighting/.git
git clone --depth=1 https://github.com/zsh-users/zsh-completions package/base-files/files/root/.oh-my-zsh/plugins/zsh-completions
rm -rf package/base-files/files/root/.oh-my-zsh/plugins/zsh-completions/.git
cat ${GITHUB_WORKSPACE}/os/common/server/package/zsh/.zshrc > package/base-files/files/root/.zshrc

find ${GITHUB_WORKSPACE}/uola-os/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf 

# LICENSE和README
cat ${GITHUB_WORKSPACE}/os/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/os/${matrix_target}/server/README.md > README.md
