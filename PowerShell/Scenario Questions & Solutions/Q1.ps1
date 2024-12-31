<#
Write a custom powershell script with the help of 5 functions as custom cmdlets 
and access them using individual cmdlet.
    List current execution policy
    List HDD size information (total & free space).
    List total running processes.
    Number of processors.
    BIOS Information.
#>

function Get-Policy{
    Write-Host "Current execution policy:" -NoNewline
    Write-Host Get-ExecutionPolicy -ForegroundColor Cyan
}
function Get-Hdd{
    $hdd = Get-WmiObject -Class win32_logicaldisk | `
    Where-Object {$_.DeviceID -eq "c:"} | `
    Select-Object DeviceID, 
    @{l='FreeSpace' ; e ={[math]::Round(($_.FreeSpace/1GB),2)}},
    @{l='Size' ; e ={[math]::Round(($_.Size/1GB),2)}}
    
    Write-Host "Total $($hdd.DeviceID) size is $($hdd.Size) GB and $($hdd.FreeSpace) GB is free"

}
function Get-RunningProcess{
    $gps = Get-Process
    Write-Host "Total running process: " -NoNewline
    Write-Host $(($gps | measure).count) -ForegroundColor Cyan
}
function Get-Processors{
    Write-Host "Total number of processors are: " -NoNewline
    Write-Host $env:NUMBER_OF_PROCESSORS -ForegroundColor Cyan
}
function Get-BiosInfo{
    $bios = (Get-WmiObject -Class win32_bios).SerialNumber
    Write-Host "BIOS Serial Number: " -NoNewline
    Write-Host $bios -ForegroundColor Cyan
}
cls
Get-Policy
Get-Hdd
Get-RunningProcess
Get-Processors
Get-BiosInfo