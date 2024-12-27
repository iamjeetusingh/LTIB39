# recurrsive function

function Get-MessageAsArgs{
param(
    [string]$fname,
    [string]$lname
    )
    Write-Host "Hello $fname $lname"
Get-MessageAsArgs -fname "Jitendra" -lname "Tomar"
}

cls
Get-MessageAsArgs -fname "Jitendra" -lname "Tomar"