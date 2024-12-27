<#
    Task
        - list only the running services
#>
cls
Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name