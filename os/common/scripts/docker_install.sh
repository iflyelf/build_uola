#!/bin/bash

# 下载版本号
DOCKER_VER=20.10.23
# docker数据目录
DOCKER_DATA=/opt/docker
# docker二进制目录
DOCKER_BIN=/usr/bin


# 下载地址
GOOGLE_URL=https://download.docker.com/linux/static/stable/x86_64
GITHUB_URL=https://download.docker.com
DOWNLOAD_URL=${GOOGLE_URL}
# DOCKER_COMPOSE_URL=$(curl -s https://api.github.com/repos/docker/compose/releases |jq -r .[].assets[].browser_download_url| grep -i 'docker-compose-Linux-x86_64'|head -n 1)
DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64

rm -rf /usr/bin/docker* /etc/init.d/dockerd
# 下载docker
wget -c "https://down.xiaonuo.live?url=${DOWNLOAD_URL}/docker-${DOCKER_VER}.tgz" -O /tmp/docker-${DOCKER_VER}.tgz
wget -c "https://down.xiaonuo.live?url=https://raw.githubusercontent.com/iflyelf/uola-packages/main/utils/dockerd/files/dockerd.init" -O /etc/init.d/dockerd
wget -c "https://down.xiaonuo.live?url=https://raw.githubusercontent.com/iflyelf/op-dockerd/main/etc/config/dockerd" -O /etc/config/dockerd
# axel -a -o /tmp "https://down.xiaonuo.live?url=${DOWNLOAD_URL}/docker-${DOCKER_VER}.tgz"
# 下载docker-compose
# wget -c ${DOCKER_COMPOSE_URL} -O /tmp/docker-compose
wget -c "https://down.xiaonuo.live?url=${DOCKER_COMPOSE_URL}" -O /tmp/docker-compose
mv -f /tmp/docker-compose /bin/docker-compose
# 授权docker-compose权限
chmod 775 /bin/docker-compose
# 创建相关目录
mkdir -pv ${DOCKER_DATA} ${DOCKER_BIN}
# 解压docker
cd /tmp/ && tar xpf /tmp/docker-${DOCKER_VER}.tgz
mv -f /tmp/docker/* ${DOCKER_BIN}/
# 授权目录权限
chmod -R 775 ${DOCKER_DATA} ${DOCKER_BIN} /etc/init.d/dockerd
# 验证版本号
docker --version

/etc/init.d/dockerd enable && /etc/init.d/dockerd start
# 查看docker信息
docker info
# 清理
# rm -rf /tmp/docker*
