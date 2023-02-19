include $(TOPDIR)/rules.mk

PKG_NAME:=default-settings
PKG_VERSION:=1.1
PKG_RELEASE:=$(COMMITCOUNT)
PKG_LICENSE:=GPL-3.0


include $(INCLUDE_DIR)/package.mk

define Package/default-settings
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=LuCI support for Default Settings
  PKGARCH:=all
  DEPENDS:=+luci +luci-compat +luci-lib-base +luci-lib-ip +luci-lib-jsonc +luci-lib-nixio +luci-ssl-nginx +luci-theme-argon +luci-app-argon-config +luci-i18n-opkg-zh-cn +@LUCI_LANG_zh_Hans +@LUCI_LANG_zh-cn \
    +autosamba +kmod-tun +kmod-sdhci +kmod-mmc +kmod-mmc-spi +kmod-scsi-core \
    +luci-proto-3g +luci-proto-bonding +luci-proto-ipv6 +luci-proto-ncm +luci-proto-openconnect +luci-proto-ppp +luci-proto-relay +luci-proto-vxlan +luci-proto-wireguard \
    +luci-app-quickstart +luci-i18n-quickstart-zh-cn +luci-app-cpulimit +luci-app-ramfree +luci-app-smartdns +luci-i18n-smartdns-zh-cn +luci-app-firewall +luci-i18n-firewall-zh-cn +luci-app-ttyd +luci-i18n-ttyd-zh-cn +luci-app-diskman +luci-app-ksmbd +luci-i18n-ksmbd-zh-cn +luci-app-samba4 +luci-i18n-samba4-zh-cn +luci-app-wol +luci-i18n-wol-zh-cn +luci-app-upnp +luci-i18n-upnp-zh-cn +luci-app-store +luci-app-clash \
    +bash +iperf3 +acl +zsh +curl +wget +htop +screen +vim-fuller +ttyd +tcping +ipv6helper +sysstat +6in4 +unzip +gzip +tar +sed +lrzsz +lscpu +lsof +fdisk +blkid +usbutils +coreutils-nohup +bind-dig +jq +bc +openssl-util +openssh-sftp-server +openssh-sftp-client +libustream-openssl +tinc
     
endef

define Package/default-settings/description
	Language Support Packages.
endef


define Build/Compile
endef

define Package/default-settings/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/zzz-default-settings $(1)/etc/uci-defaults/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./i18n/default.zh_Hans.po $(1)/usr/lib/lua/luci/i18n/default.zh-cn.lmo
	po2lmo ./i18n/more.zh_Hans.po $(1)/usr/lib/lua/luci/i18n/more.zh-cn.lmo
endef

$(eval $(call BuildPackage,default-settings))
