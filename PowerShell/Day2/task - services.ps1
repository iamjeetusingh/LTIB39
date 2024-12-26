<#
    Task
        - ask user for a service name (bits)
        - if the service is running, show the Full name is GREEN color
        - else in RED color.
#>
cls
$name = Read-Host "Enter service name to check "
$svc = Get-Service -Name $name
if($svc.Status -eq "Running"){
    Write-Host "$($svc.DisplayName)" -ForegroundColor Green
}else{
    Write-Host "$($svc.DisplayName)" -ForegroundColor red
}