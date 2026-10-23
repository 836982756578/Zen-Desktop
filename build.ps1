# Modern AutoHide Desktop Icons - PowerShell Derleme Betiği
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "  Modern AutoHide Desktop Icons - Derleme Betiği" -ForegroundColor White
Write-Host "===================================================" -ForegroundColor Cyan
Write-Host ""

$cscCandidates = @(
    "C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\MSBuild\Current\Bin\Roslyn\csc.exe",
    "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe",
    "C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe"
)

$csc = $null
foreach ($path in $cscCandidates) {
    if (Test-Path $path) {
        $csc = $path
        break
    }
}

if (-not $csc) {
    Write-Host "[HATA] csc.exe C# derleyicisi bulunamadı!" -ForegroundColor Red
    exit 1
}

Write-Host "Kullanılan Derleyici: $csc" -ForegroundColor Gray

$pf = "C:\Windows\Microsoft.NET\assembly\GAC_MSIL\PresentationFramework\v4.0_4.0.0.0__31bf3856ad364e35\PresentationFramework.dll"
$pc = "C:\Windows\Microsoft.NET\assembly\GAC_64\PresentationCore\v4.0_4.0.0.0__31bf3856ad364e35\PresentationCore.dll"
if (-not (Test-Path $pc)) {
    $pc = "C:\Windows\Microsoft.NET\assembly\GAC_32\PresentationCore\v4.0_4.0.0.0__31bf3856ad364e35\PresentationCore.dll"
}
$wb = "C:\Windows\Microsoft.NET\assembly\GAC_MSIL\WindowsBase\v4.0_4.0.0.0__31bf3856ad364e35\WindowsBase.dll"
$sx = "C:\Windows\Microsoft.NET\assembly\GAC_MSIL\System.Xaml\v4.0_4.0.0.0__b77a5c561934e089\System.Xaml.dll"

Write-Host "Derleniyor: Desktop Zen.exe ..." -ForegroundColor Yellow

$iconFlag = if (Test-Path ".\zen_icon.ico") { "/win32icon:`"zen_icon.ico`"" } else { "" }
$proc = Start-Process -FilePath $csc -ArgumentList "/nologo /target:winexe /optimize+ /codepage:65001 /utf8output $iconFlag /out:`"Desktop Zen.exe`" /r:System.dll /r:System.Drawing.dll /r:System.Windows.Forms.dll /r:System.Web.Extensions.dll /r:`"$pf`" /r:`"$pc`" /r:`"$wb`" /r:`"$sx`" ModernAutoHideIcons.cs" -NoNewWindow -PassThru -Wait

if ($proc.ExitCode -eq 0) {
    Write-Host ""
    Write-Host "[BAŞARILI] Desktop Zen.exe başarıyla oluşturuldu!" -ForegroundColor Green
    $item = Get-Item ".\Desktop Zen.exe"
    Write-Host "Boyut: $([math]::Round($item.Length / 1KB, 1)) KB" -ForegroundColor Gray
} else {
    Write-Host ""
    Write-Host "[HATA] Derleme sırasında hata oluştu. Çıkış kodu: $($proc.ExitCode)" -ForegroundColor Red
}
