<#
Get Name, display name, Status and Start Type of all the services and 
convert them to JSON and XML format. Write a new PowerShell script that counts 
number of lines in each file (JSON & XML) displays as:
	Number of lines in JSON file: <>
	Number of lines in XML file: <>
#>
cls

# converting data to JSON
Get-Service | `
Select-Object Name, DisplayName, Status, StartType | `
ConvertTo-Json | `
Out-File Services.json

# converting data to XML
Get-Service | `
Select-Object Name, DisplayName, Status, StartType | `
Export-Clixml Services.xml

# number of JSON lines 
$json = ((Get-Content .\Services.json) | Measure-Object).Count
$xml  = ((Get-Content .\Services.xml) | Measure-Object).Count

Write-Host "Total number of line in JSON: " -NoNewline 
Write-Host $json -ForegroundColor Cyan
Write-Host "Total number of line in XML : " -NoNewline 
Write-Host $xml -ForegroundColor Cyan