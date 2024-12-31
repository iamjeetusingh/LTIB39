<#
Display all the services within a HTML webpage with the following customization like:
	Name (starts with “S”)
	Status (equals to “running”) &
	Start Type (Automatic)
#>

Get-Service -Name S* | `
Where-Object {($_.Status -eq "Running") -and ($_.StartType -eq "automatic")} | `
Select-Object Name, Status, StartType | `
ConvertTo-Html | `
out-file service.html

.\service.html