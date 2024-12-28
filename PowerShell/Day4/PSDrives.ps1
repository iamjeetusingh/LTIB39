<#
    PSDrives
        - PowerShell Drives
        - that are specifically available when accessed using Powershell

#>

# Cmdlets
Get-Command -Noun psdrive

# listing all the current PSDRives
Get-PSDrive
Get-PSDrive -PSProvider FileSystem
Get-PSDrive -PSProvider Registry

cls
# listing logged in user name
Write-Host "You have logged in : " -NoNewline
Write-Host $($Env:USERNAME) -ForegroundColor Cyan

# listing number of processors
Write-Host "You have total of " -NoNewline
Write-Host $($Env:NUMBER_OF_PROCESSORS) -ForegroundColor Cyan -NoNewline
Write-Host " core processors."

#listing all GLOBAL ENV variables
Get-ChildItem Env:\