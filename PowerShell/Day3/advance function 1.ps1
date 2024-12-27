# advance function

function Get-MessageAsArgs{

param(
    [string]$fname,
    [string]$lname
    )
    Write-Host "Hello $fname $lname"

}

cls
Get-MessageAsArgs -fname "Jitendra" -lname "Tomar"