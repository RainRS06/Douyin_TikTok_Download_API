#!/bin/bash

echo "================================================"
echo "  TikTok评论下载器 - 自动安装脚本"
echo "================================================"
echo

echo "正在检查Python安装..."
if ! command -v python3 &> /dev/null; then
    echo "❌ 错误：未找到Python3"
    echo "请先安装Python3："
    echo "Ubuntu/Debian: sudo apt install python3 python3-pip"
    echo "CentOS/RHEL: sudo yum install python3 python3-pip"
    echo "macOS: brew install python3"
    exit 1
fi

echo "✅ Python3已安装"
echo

echo "正在升级pip..."
python3 -m pip install --upgrade pip

echo
echo "正在安装依赖包..."
pip3 install -r requirements.txt

echo
echo "================================================"
echo "  安装完成！"
echo "================================================"
echo
echo "接下来的步骤："
echo "1. 编辑 video_urls.txt 文件，添加您要下载的TikTok视频链接"
echo "2. 运行 python3 tiktok_comments_downloader.py 开始下载"
echo

# 使脚本可执行
chmod +x "$0"