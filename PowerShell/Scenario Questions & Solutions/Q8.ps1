<#
Write a powershell script that takes a text as input containing 5 websites names in it 
and ping using 1 by 1 using powershell and stores the names of non-pingable sites 
in another file (non-pingable.txt).
#>

function Get-MyPing{
param($site)
    if( Test-Connection -ComputerName $site -Count 1 -ErrorAction SilentlyContinue ){
        Write-Host $site -ForegroundColor Green
    }else{
        $site | Out-File non-pingable.txt -Append
    }
}

#notepad.exe comp.txt
cls

$comp = Get-Content .\comp.txt

$comp | foreach{
    MyPing -site $_
}