<#
    $profile
        - this is a variable that contains the path of the file 
            that gets called everytime you open powershell or 
            powershell ISE.
#>
cls
if(Test-Path $profile){
    Write-Host "File is present" -ForegroundColor Green
}else{
    Write-Host "File is not present" -ForegroundColor Red
    Write-Host "Creating the file now" -ForegroundColor Cyan
    New-Item -ItemType File -Path $profile -Force
}