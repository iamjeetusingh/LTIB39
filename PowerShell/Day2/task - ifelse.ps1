<# task - 
    ping any website and display if its pinging or not
    if its pinging, display message "Its Pinging" in green color
    else display "Its not pinging" in Red color
#>
cls
$site = Read-Host "Enter site name"
if( Test-Connection $site -Count 1 -ErrorAction SilentlyContinue ){
    Write-Host "Its Pinging" -ForegroundColor Green
}else{
    Write-Host "Its Not Pinging" -ForegroundColor Red
}