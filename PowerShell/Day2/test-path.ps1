cls

$filename = "E:\PowerShell\batch39.2\Day2\objects.ps1"

if(Test-Path -Path $filename){
    Write-Host "Object file is present" -ForegroundColor Green
}else{
    Write-Host "Object file is absent" -ForegroundColor Red
}