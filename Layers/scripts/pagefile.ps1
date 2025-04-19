$PageFileResults = Get-CimInstance -Class Win32_PageFileUsage | Select-Object *

$PageFileResults.Caption

if ($PageFileResults.Caption -eq "Y:\pagefile.sys" )
{
    Write-Output "Nothing to be done"
}
else
{
    Write-Output "need delete pagefile"
    gwmi win32_pagefilesetting
    $pf=gwmi win32_pagefilesetting
    $pf.Delete()

    reg add HKLM\System\CurrentControlSet\Services\cdrom /t REG_DWORD /v "Start" /d 4 /f
    reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\flpydisk /t REG_DWORD /v "Start" /d 4 /f

    Restart-Computer
}