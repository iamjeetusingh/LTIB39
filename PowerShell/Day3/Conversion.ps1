<#
    Conversion - converting the data into another formats
#>

#cmdlet
Get-Command -Verb convertto

# to list all services starting with "S"
Get-Service -Name s* | `
Select-Object Name, Status

# converting this data into gridview
Get-Service -Name s* | `
Select-Object Name, Status | Out-GridView

# converting this data into text file
Get-Service -Name s* | `
Select-Object Name, Status | Out-File s-services.txt
notepad.exe .\s-services.txt

# converting this data into CSV (Comma Seperated Value) format
Get-Service -Name s* | `
Select-Object Name, Status | `
ConvertTo-Csv | `
Out-File s-services.csv
notepad.exe .\s-services.csv    # opens the CSV using notepad.

# converting this data into HTML format
Get-Service -Name s* | `
Select-Object Name, Status | `
ConvertTo-Html | `
Out-File s-services.html
.\s-services.html    # opens the HTML page using web browser

# converting this data into JSON (JavaScript Object Notation) format
Get-Service -Name s* | `
Select-Object Name, Status | `
ConvertTo-Json | `
Out-File s-services.json
notepad.exe .\s-services.json    

# converting this data into XML format --> not the best solution
Get-Service -Name s* | `
Select-Object Name, Status | `
ConvertTo-Xml | `
Out-File s-services.xml
notepad.exe .\s-services.xml    

# converting this data into XML format --> best solution
Get-Service -Name s* | `
Select-Object Name, Status | `
Export-Clixml New-s-services.xml
notepad.exe New-s-services.xml    


# login in using username & password.
cls
$username = Read-Host "Enter your username"
$password = Get-Credential -UserName $username -Message "Enter ur PWD"
$password = ConvertTo-SecureString $password -AsPlainText -Force
Write-Host "Your username is $($username) & password is $($password)"


# login in using username & password - alternative
cls
$username = Read-Host "Enter your username"
$password = Get-Credential -UserName $username -Message "Enter ur PWD"
Write-Host "Your username is $($username) & password is $($password)"