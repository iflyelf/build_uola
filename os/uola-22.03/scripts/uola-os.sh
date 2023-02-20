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
sed -i  '/base-files/i\\        default-settings \\' include/target.mk
sed -i  '/default-settings/a\\        luci-ssl-nginx \\' include/target.mk
sed -i  '/luci-ssl-nginx/a\\        luci-theme-argon \\' include/target.mk
sed -i  '/luci-theme-argon/a\\        luci-app-argon-config \\' include/target.mk
sed -i  '/luci-app-argon-config/a\\        luci-i18n-base-zh-cn \\' include/target.mk
sed -i  '/luci-i18n-base-zh-cn/a\\        luci-i18n-opkg-zh-cn \\' include/target.mk
sed -i  '/luci-i18n-opkg-zh-cn/a\\        autosamba \\' include/target.mk
sed -i  '/autosamba/a\\        kmod-tun \\' include/target.mk
sed -i  '/kmod-tun/a\\        kmod-sdhci \\' include/target.mk
sed -i  '/kmod-sdhci/a\\        kmod-mmc \\' include/target.mk
sed -i  '/kmod-mmc/a\\        kmod-mmc-spi \\' include/target.mk
sed -i  '/kmod-mmc-spi/a\\        kmod-scsi-core \\' include/target.mk
sed -i  '/kmod-scsi-core/a\\        luci-proto-3g \\' include/target.mk
sed -i  '/luci-proto-3g/a\\        luci-proto-bonding \\' include/target.mk
sed -i  '/luci-proto-bonding/a\\        luci-proto-ipv6 \\' include/target.mk
sed -i  '/luci-proto-ipv6/a\\        luci-proto-ncm \\' include/target.mk
sed -i  '/luci-proto-ncm/a\\        luci-proto-openconnect \\' include/target.mk
sed -i  '/luci-proto-openconnect/a\\        luci-proto-ppp \\' include/target.mk
sed -i  '/luci-proto-ppp/a\\        luci-proto-relay \\' include/target.mk
sed -i  '/luci-proto-relay/a\\        luci-proto-vxlan \\' include/target.mk
sed -i  '/luci-proto-vxlan/a\\        luci-proto-wireguard \\' include/target.mk
sed -i  '/luci-proto-wireguard/a\\        luci-app-quickstart \\' include/target.mk
sed -i  '/luci-app-quickstart/a\\        luci-i18n-quickstart-zh-cn \\' include/target.mk
sed -i  '/luci-i18n-quickstart-zh-cn/a\\        luci-app-cpulimit \\' include/target.mk
sed -i  '/luci-app-cpulimit/a\\        luci-app-ramfree \\' include/target.mk
sed -i  '/luci-app-ramfree/a\\        luci-app-wol \\' include/target.mk
sed -i  '/luci-app-wol/a\\        luci-i18n-wol-zh-cn \\' include/target.mk
sed -i  '/dnsmasq-full/a\\        smartdns \\' include/target.mk
sed -i  '/smartdns/a\\        luci-app-smartdns \\' include/target.mk
sed -i  '/luci-app-smartdns/a\\        luci-i18n-smartdns-zh-cn \\' include/target.mk


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
