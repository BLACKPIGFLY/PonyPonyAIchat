@echo off
:: ==========================================
:: 1. 启动 GPT-SoVITS API (独立控制台模式)
:: ==========================================

:: 切换到 API 所在的硬盘和目录 (D盘)
:: /d 参数确保同时切换盘符和路径，防止出错
cd /d "D:\GPTsovits\GPT-SoVITS-v2pro-20250604"

echo [Launcher] Starting TTS API Service...

:: start "窗口标题" cmd /k "命令"
:: /k 表示执行完命令后保留窗口，这样你能看到报错和日志
:: 这里的 python 如果你使用的是整合包自带的环境，可能需要改成绝对路径，详见下方说明
start "GPT-SoVITS API Console" cmd /k "D:\GPTsovits\GPT-SoVITS-v2pro-20250604\runtime\python.exe api_v2.py"

:: ==========================================
:: 2. 等待 API 初始化 (可选)
:: ==========================================
:: 暂停 3 秒，让 API 有时间加载模型，防止游戏刚进就连接失败
timeout /t 3 /nobreak >nul


:: ==========================================
:: 3. 启动 Ren'Py 游戏
:: ==========================================

:: 切换回当前 .bat 文件所在的目录 (即游戏目录)
cd /d "%~dp0"

echo [Launcher] Launching EquestrAI...

:: 启动游戏，并不等待游戏结束，bat 自身随后退出
start "" "EquestrAI.exe"

:: 退出当前的启动器窗口 (保留 API 窗口和游戏窗口)
exit