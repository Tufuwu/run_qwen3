#!/bin/bash
set -e  # 遇到错误立即退出

# 下载 Radare2 5.8.0 deb 包
wget https://github.com/radareorg/radare2/releases/download/5.8.0/radare2_5.8.0_amd64.deb -O /tmp/radare2_5.8.0_amd64.deb

# 安装
sudo dpkg -i /tmp/radare2_5.8.0_amd64.deb || sudo apt-get install -f -y

# 显示版本验证
r2 -v