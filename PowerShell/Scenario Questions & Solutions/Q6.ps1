<#
Write a script that counts all the duplicates of a running process (ex: SVCHOST).
#>
cls

$pcs = (Get-Process -Name svchost | Measure-Object).Count

Write-Host "Total number of duplicate SVCHOST processes are: "  -NoNewline
Write-Host $pcs -ForegroundColor Cyan
