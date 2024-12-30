function Get-FullSystemInformation{
Write-Host "#######################################################"
# Listing Laptop Specifics
    $sys = Get-WmiObject -Class win32_computersystem
    Write-Host "You are using Laptop Model : " -NoNewline
    Write-Host $sys.Model -ForegroundColor Yellow
    Write-Host "Your Manufacturer is       : " -NoNewline 
    Write-Host $sys.Manufacturer -ForegroundColor Yellow
    Write-Host "Your Primary Owner Name is : " -NoNewline 
    Write-Host $sys.PrimaryOwnerName -ForegroundColor Yellow

# Listing RAM Specifics
    $ram = Get-WmiObject -Class win32_computersystem | `
    Select-Object @{l="TotalPhysicalMemory" ; e = {[math]::Round((($_.TotalPhysicalMemory)/1GB),2)}}
    Write-Host "Total Physical Memory is   : " -NoNewline
    Write-Host $ram.TotalPhysicalMemory "GB"-ForegroundColor Yellow

# Listing HDD Specifics
    Get-WmiObject -Class Win32_LogicalDisk | `
    Where-Object {$_.DriveType -eq 3} | `
    Select-Object DeviceID, 
    @{l="FreeSpace" ; e = {[math]::Round((($_.FreeSpace)/1GB),2)}},
    @{l="Size" ; e = {[math]::Round((($_.Size)/1GB),2)}}

}
