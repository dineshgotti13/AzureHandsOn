$PageFileResults = Get-CimInstance -Class Win32_PageFileUsage | Select-Object *
$PageFileResults.Caption

if ($PageFileResults.Caption -eq "Y:\pagefile.sys" )
{
    Write-Output "Nothing to be done"
}
else
{
    Write-Output "Starting Disk Setup $(Get-Date)"

    Write-Output "Set Disk 1 to Y partition"
    Get-Partition -DiskNumber 1 | Set-Partition -NewDriveLetter Y
    wmic pagefileset create name="Y:\pagefile.sys"

    Write-Output "Set C Partition to max size"
    $size = Get-PartitionSupportedSize -DriveLetter C
    Resize-Partition -DriveLetter C -Size $size.SizeMax

    Get-Disk | Where-Object PartitionStyle -Eq 'RAW' | Initialize-Disk

    New-Partition -DiskNumber 2 -DriveLetter D -UseMaximumSize
    New-Partition -DiskNumber 3 -DriveLetter E -UseMaximumSize
    New-Partition -DiskNumber 4 -DriveLetter F -UseMaximumSize -ErrorAction SilentlyContinue
    New-Partition -DiskNumber 5 -DriveLetter G -UseMaximumSize -ErrorAction SilentlyContinue
    New-Partition -DiskNumber 6 -DriveLetter H -UseMaximumSize -ErrorAction SilentlyContinue
    New-Partition -DiskNumber 7 -DriveLetter I -UseMaximumSize -ErrorAction SilentlyContinue
    New-Partition -DiskNumber 8 -DriveLetter T -UseMaximumSize -ErrorAction SilentlyContinue
    New-Partition -DiskNumber 9 -DriveLetter X -UseMaximumSize -ErrorAction SilentlyContinue

    # New-Partition -DiskNumber 10 -DriveLetter J -UseMaximumSize -ErrorAction SilentlyContinue
    # New-Partition -DiskNumber 11 -DriveLetter K -UseMaximumSize -ErrorAction SilentlyContinue
    # New-Partition -DiskNumber 12 -DriveLetter L -UseMaximumSize -ErrorAction SilentlyContinue
    # New-Partition -DiskNumber 13 -DriveLetter W -UseMaximumSize -ErrorAction SilentlyContinue

    Write-Output "Remove Existing Partitions"
    Format-Volume -DriveLetter D,E -FileSystem NTFS -Confirm:$false
    Format-Volume -DriveLetter F,G,H,I,T,X -FileSystem NTFS -ErrorAction SilentlyContinue -Confirm:$false
    # Format-Volume -DriveLetter F,G,H,I,T,X,J,K,L,W -FileSystem NTFS -ErrorAction SilentlyContinue -Confirm:$false

    #SCCM setup

    if("${region}" -eq "eastus2")
    {
        C:\Windows\Temp\ccmsetup\Client\CCMSetup.exe /noservice /MP:ACE2PSC07310001.itservices.sbc.com SMSSITECODE=N00 SMSSLP=ACE2PSC07310001.itservices.sbc.com
    }
    if("${region}" -eq "westus2")
    {
        C:\Windows\Temp\ccmsetup\Client\CCMSetup.exe /noservice /MP:ACW2PSC07310001.itservices.sbc.com SMSSITECODE=N00 SMSSLP=ACW2PSC07310001.itservices.sbc.com
    }

}