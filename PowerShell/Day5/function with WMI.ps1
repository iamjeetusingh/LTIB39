function Get-SysInfo{
    $sys = Get-WmiObject -Class win32_computersystem
    Write-Host "You are using Laptop Model : " $sys.Model
    Write-Host "Your Manufacturer is       : " $sys.Manufacturer
    Write-Host "Your Primary Owner Name is : " $sys.PrimaryOwnerName
}
function Get-RAMInfo{
# $ram = (Get-WmiObject -Class win32_computersystem).TotalPhysicalMemory
#or
$ram = Get-WmiObject -Class win32_computersystem | `
Select-Object @{l="TotalPhysicalMemory" ; e = {[math]::Round((($_.TotalPhysicalMemory)/1GB),2)}}
Write-Host "Total Physical Memory is   : " $ram.TotalPhysicalMemory "GB"

}
function Get-HDDInfo{
    Get-WmiObject -Class Win32_LogicalDisk | `
    Where-Object {$_.DriveType -eq 3} | `
    Select-Object DeviceID, 
    @{l="FreeSpace" ; e = {[math]::Round((($_.FreeSpace)/1GB),2)}},
    @{l="Size" ; e = {[math]::Round((($_.Size)/1GB),2)}}
}

cls
Get-SysInfo
Get-RAMInfo
Get-HDDInfo