@echo off
chcp 65001 > nul
echo ===================================================
echo   Modern AutoHide Desktop Icons - Derleme Scripti
echo ===================================================
echo.

set CSC=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe

if not exist "%CSC%" (
    set CSC=C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe
)

if not exist "%CSC%" (
    echo [HATA] .NET Framework csc.exe derleyicisi bulunamadi!
    pause
    exit /b 1
)

set PF=C:\Windows\Microsoft.NET\assembly\GAC_MSIL\PresentationFramework\v4.0_4.0.0.0__31bf3856ad364e35\PresentationFramework.dll
set PC=C:\Windows\Microsoft.NET\assembly\GAC_64\PresentationCore\v4.0_4.0.0.0__31bf3856ad364e35\PresentationCore.dll
if not exist "%PC%" (
    set PC=C:\Windows\Microsoft.NET\assembly\GAC_32\PresentationCore\v4.0_4.0.0.0__31bf3856ad364e35\PresentationCore.dll
)
set WB=C:\Windows\Microsoft.NET\assembly\GAC_MSIL\WindowsBase\v4.0_4.0.0.0__31bf3856ad364e35\WindowsBase.dll
set SX=C:\Windows\Microsoft.NET\assembly\GAC_MSIL\System.Xaml\v4.0_4.0.0.0__b77a5c561934e089\System.Xaml.dll

echo Derleniyor: Desktop Zen.exe ...
"%CSC%" /nologo /target:winexe /optimize+ /out:"Desktop Zen.exe" /r:System.dll /r:System.Drawing.dll /r:System.Windows.Forms.dll /r:"%PF%" /r:"%PC%" /r:"%WB%" /r:"%SX%" ModernAutoHideIcons.cs

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [BASARILI] Desktop Zen.exe basariyla olusturuldu!
) else (
    echo.
    echo [HATA] Derleme sirasinda hata olustu.
)

echo.
pause
