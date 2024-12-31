<#
    List top 10 processes “Display Names” with high CPU 
    utilization and store these display names in a text file.
#>

cls
Get-Process | `
Sort-Object -Descending CPU | `
Select-Object ProcessName, `
@{l="CPU" ; e = {([math]::Round($_.CPU,2))}} `
-First 10 | `
Out-File top10Process.txt

notepad.exe top10Process.txt