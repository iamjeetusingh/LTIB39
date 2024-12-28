Write-Host 
Write-Output
Write-Error
Write-Warning
Write-Progress

help Write-Progress -Examples
for ($i = 1; $i -le 100; $i++ ) {
        Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" 
    -PercentComplete $i
        Start-Sleep -Milliseconds 250
}