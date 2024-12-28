# conversion

# converting data to XML
Get-Service | Export-Clixml services.xml

# converting data to JSON
Get-Service | ConvertTo-Json | Out-File services.json

