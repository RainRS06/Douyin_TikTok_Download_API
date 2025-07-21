@echo off
chcp 65001
echo ================================================
echo   TikTok评论下载器 - 自动安装脚本
echo ================================================
echo.

echo 正在检查Python安装...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 错误：未找到Python，请先安装Python
    echo 请访问 https://www.python.org/downloads/ 下载安装Python
    pause
    exit /b 1
)

echo ✅ Python已安装
echo.

echo 正在升级pip...
python -m pip install --upgrade pip

echo.
echo 正在安装依赖包...
pip install -r requirements.txt

echo.
echo ================================================
echo   安装完成！
echo ================================================
echo.
echo 接下来的步骤：
echo 1. 编辑 video_urls.txt 文件，添加您要下载的TikTok视频链接
echo 2. 运行 python tiktok_comments_downloader.py 开始下载
echo.
pause