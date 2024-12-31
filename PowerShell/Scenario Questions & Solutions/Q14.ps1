<#
    Use PowerShell to retrieve the top five 
    processes consuming the most CPU on your 
    system and save their names, IDs, and CPU 
    usage to a CSV file named `TopProcesses.csv`.  
#>
cls
Get-Process | `
Sort-Object -Descending CPU | `
Select-Object Id, ProcessName, `
@{l="CPU" ; e = {([math]::Round($_.CPU,2))}} `
-First 5 | `
ConvertTo-Csv -NoTypeInformation |
Out-File TopProcesses.csv

notepad.exe .\TopProcesses.csv