@echo off
chcp 65001 >nul
net session >nul 2>&1
if not "%errorLevel%"=="0" (
  powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
  exit /b
)
cd /d "%~dp0"
certutil.exe -addstore -f "Root" "%~dp0chuongminh-studio.cer"
certutil.exe -addstore -f "TrustedPublisher" "%~dp0chuongminh-studio.cer"
echo.
echo Da cai dat chung chi so Chuong Minh Studio thanh cong!
pause