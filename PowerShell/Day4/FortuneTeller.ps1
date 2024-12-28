cls
Write-host "Fortune Game" -ForegroundColor Cyan 
Write-host "########################################"
# notepad.exe fortune.txt
# notepad.exe user.txt
# notepad.exe neg.txt

$fort = Get-Content .\fortune.txt
$user = Get-Content .\user.txt
$neg  = Get-Content .\neg.txt
[string]$name = Read-Host "Enter name: "

if( -not($user | Select-String $name) ){
  #Write-Host "$name does not exists adding to the database" -ForegroundColor red
  $name | Out-File .\user.txt -Encoding utf8 -Append
}   
    $f = Get-Random $fort -Count 1
    Write-Host ""
    Write-Host "Good thing about you"
    Write-Host ">>>>> $f <<<<<" -ForegroundColor Green

 Write-Host ""
   Write-Host "Bad thing about you"
   $n = Get-Random $neg -Count 1
   Write-Host ">>>>>" $n "<<<<<" -ForegroundColor Yellow
