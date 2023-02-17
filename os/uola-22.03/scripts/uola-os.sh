#!/bin/bash

# 修改源地址
cat ${GITHUB_WORKSPACE}/os/${matrix_target}/server/feeds.conf.default > feeds.conf.default

# 修改LuCI 配置
sed -i '/odhcp6c/d' include/target.mk
sed -i '/odhcpd-ipv6only/d' include/target.mk
sed -i 's#dnsmasq#dnsmasq-full#g' include/target.mk
sed -i '/base-files/i\\        default-settings \\' include/target.mk

# 增加zsh
mkdir -p package/base-files/files/root
git clone https://github.com/ohmyzsh/ohmyzsh.git package/base-files/files/root/.oh-my-zsh
rm -rf package/base-files/files/root/.oh-my-zsh/.git
git clone https://github.com/zsh-users/zsh-autosuggestions package/base-files/files/root/.oh-my-zsh/plugins/zsh-autosuggestions
rm -rf package/base-files/files/root/.oh-my-zsh/plugins/zsh-autosuggestions/.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git package/base-files/files/root/.oh-my-zsh/plugins/zsh-syntax-highlighting
rm -rf package/base-files/files/root/.oh-my-zsh/plugins/zsh-syntax-highlighting/.git
git clone https://github.com/zsh-users/zsh-completions package/base-files/files/root/.oh-my-zsh/plugins/zsh-completions
rm -rf package/base-files/files/root/.oh-my-zsh/plugins/zsh-completions/.git
cat ${GITHUB_WORKSPACE}/os/common/server/package/zsh/.zshrc > package/base-files/files/root/.zshrc

find ${GITHUB_WORKSPACE}/uola-os/ \( -name .git -o -name .github -o -name .svn \) -type d | xargs -exec rm -rf 

# LICENSE和README
cat ${GITHUB_WORKSPACE}/os/${matrix_target}/server/LICENSE > LICENSE
cat ${GITHUB_WORKSPACE}/os/${matrix_target}/server/README.md > README.md
