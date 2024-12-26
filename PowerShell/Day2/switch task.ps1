﻿cls
$ans = Read-Host "
Select any option from the following:
    1. Check hostname
    2. List IP address
    3. Ping Google.com
    4. Exit
"
switch( $ans ){
    1 { HOSTNAME.EXE }
    2 { $ip = (Get-NetIPAddress | `
        Where-Object {($_.ifIndex -eq 10) -and ($_.PrefixOrigin -eq "Dhcp")}).IPAddress 
        Write-Host "Your IP address is: $ip"
    }
    3 { Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue }
    4 { Write-Host "Quitting console..." -ForegroundColor Cyan
        Start-Sleep 2
        break }
    default { Write-Warning "Invalid Selection" }
}