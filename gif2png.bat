@echo off
rem ���� png �ļ��У�����Ѵ����򲻴����µ�
if not exist "png" mkdir png
rem ������ǰĿ¼�µ�����.gif �ļ�������ת��
for %%i in (*.gif) do (
    rem ��ȡ�ļ�����������չ����
    set "filename=%%~ni"
    rem ʹ�� convert �������ת�����������Ѿ���װ�� Imagemagick ���� convert ������ϵͳ·���У�
    E:\"Program Files"\ImageMagick-7.1.1-Q16-HDRI\magick.exe "%%i" "png\%%~ni.png"
)
echo ת����ɣ�
pause