<#
Use “non-persistent remoting” approach to create following 
options on remote computer(s).
    Create a directory in C:\ drive and name it “CISLTIM”.
	Create a file in this folder with name “PowerShell.txt”
	Write your name and PS ID in this file
#>

# to fetch the data from the file
$site = Get-Content .\site.txt

# to connect to remote computer & run commands
Invoke-Command -ComputerName $comp -Credential -ScriptBlock{
    
    New-Item -Path "c:\" -ItemType Directory -Name "CISLTIM" -Force

    New-Item -Path "c:\CISLTIM" -ItemType File -Name "PowerShell.txt" -Force

    Set-Content -Path "c:\CISLTIM\PowerShell.txt" -Value "JEETU - PSID" -Force

}