<#
Write a powershell script that ping to multiple websites (of your choice) by the names from a text file. 
Display all pingable websites in GREEN colour and non-pingable in RED colour.
#>

function Get-ping{
param($site)
    if( Test-Connection -ComputerName $site -Count 1 -ErrorAction SilentlyContinue ){
        Write-Host $site -ForegroundColor Green
    }else{
        Write-Host $site -ForegroundColor Red
    }
}

#notepad.exe comp.txt
cls

$comp = Get-Content .\comp.txt

$comp | foreach{
    Get-ping -site $_
}