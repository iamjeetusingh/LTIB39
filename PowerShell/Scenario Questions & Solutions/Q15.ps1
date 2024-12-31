<#
    Write a powershell program to check 
    if $profile is present or not. 
    If its not present then write a code 
    to create it. After creation, write 
    the following message “Hello <YourPSID>” 
    & verify.
#>
cls
if(Test-Path $profile){
    Write-Host "File already present" -ForegroundColor Green
}else{
    Write-Host "File not present, creating one." -ForegroundColor Red
    New-Item -Path $profile -ItemType File -Force
}

Set-Content -Path $profile -Value "Hello PSID" -Force