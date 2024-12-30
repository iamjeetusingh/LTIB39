# One to Many - Non-Persistent Remoting

# run this on your machines
Set-Item WSMan:\localhost\Client\TrustedHosts *

# to enable remoting
Enable-PSRemoting -Force

# create a notepad with all computer names in it.
notepad.exe comp.txt

# to fetch the data from the file
$comp = Get-Content .\comp.txt

# to connect to remote computer & run commands
Invoke-Command -ComputerName $comp -Credential (Get-Credential -UserName "training\administrator" -Message "User's password" ) -ScriptBlock{
    
    New-Item -Path "c:\" -ItemType Directory -Name "LTIB39.2" -Force

    New-Item -Path "c:\LTIB39.2" -ItemType File -Name "testFile.txt" -Force

    Set-Content -Path "c:\LTIB39.2\testFile.txt" -Value "All are in SLEEPING mode!!!" -Force

}