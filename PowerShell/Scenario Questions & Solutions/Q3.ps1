<#
Display the following options with dynamic values (within <> brackets) 
whenever you open/invoke powershell session.
    Logged in username: <username>
    Internet connectivity: <Active/Inactive>
    Hostname: <hostname>
    Current IP address: <fetch IP address>
#>
function Get-Username{
    Write-Host "Logged in username: " -NoNewline
    Write-Host $($env:USERNAME) -ForegroundColor Cyan
}
function Get-NetConnectivity{
    if(Test-Connection google.com -Count 1 -ea SilentlyContinue){
        Write-Host "Internet is active" -ForegroundColor Green
    }else{
        Write-Host "Internet is inactive" -ForegroundColor Red
    }
}
function Get-Hostname{
    Write-Host "Hostname: " -NoNewline
    Write-Host hostname.exe -ForegroundColor Cyan
}
function Get-IPAddr{
    $IP = (Get-NetIPAddress | `
    Where-Object {($_.InterfaceAlias -eq "Wi-Fi") -and ($_.AddressFamily -eq "IPv4")}).IPAddress
    Write-Host "Your IP Address is: " -NoNewline
    Write-Host $IP -ForegroundColor Cyan
}

cls
Get-Username
Get-NetConnectivity
Get-Hostname
Get-IPAddr