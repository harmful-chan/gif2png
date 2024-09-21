@echo off
rem 创建 png 文件夹，如果已存在则不创建新的
if not exist "png" mkdir png
rem 遍历当前目录下的所有.gif 文件并进行转换
for %%i in (*.gif) do (
    rem 获取文件名（不含扩展名）
    set "filename=%%~ni"
    rem 使用 convert 命令进行转换（假设你已经安装了 Imagemagick 并且 convert 命令在系统路径中）
    E:\"Program Files"\ImageMagick-7.1.1-Q16-HDRI\magick.exe "%%i" "png\%%~ni.png"
)
echo 转换完成！
pause