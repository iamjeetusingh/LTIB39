# function + pipeline + foreach loop

function Get-SitePing{
param($s)
    if(Test-Connection $s -Count 1 -ErrorAction SilentlyContinue){
        Write-Host $s -ForegroundColor Green
    }else{
        Write-Host $s -ForegroundColor Red
    }
}

cls

$sites = Get-Content "E:\PowerShell\batch39.2\Day3\sites.txt"

$sites | foreach{
    Get-SitePing -s $_
}