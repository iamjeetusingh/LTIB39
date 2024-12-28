<#
    Ask user to enter a service name (BITS),
    check for the status of this service.
    if service is running, ask user for
	    - do you want to stop the service
	    - exit
    if service is stopped, ask user for
	    - do you want to start the service
	    - exit
    then display the current status of the service after starting or stopping.
#>
cls
$sname = Read-Host "Enter Service name: "
$svc = Get-Service -Name $sname
if( $svc.Status -eq "Running"){
    Write-Host "$sname is Running" -ForegroundColor Yellow
    $ans = Read-Host "Do you want to stop the service? (y/n)"
    switch($ans){
        y {  
            Write-Host "Stopping the service $sname" -ForegroundColor Yellow
            Stop-Service -Name $sname 
            Write-Host "$sname is now $((Get-Service -Name $sname).Status)" -ForegroundColor Yellow
        }
        n { Write-Host "quitting console" -ForegroundColor Cyan
            sleep 2
            exit }
        default { Write-Warning "Invalid selection!!!"}
    }
}else{
     Write-Host "$sname is Stopped" -ForegroundColor Yellow
    $ans = Read-Host "Do you want to start the service? (y/n)"
    switch($ans){
        y {  
            Write-Host "Starting the service $sname" -ForegroundColor Yellow
            Start-Service -Name $sname 
            Write-Host "$sname is now $((Get-Service -Name $sname).Status)" -ForegroundColor Yellow
        }
        n { Write-Host "quitting console" -ForegroundColor Cyan
            sleep 2
            exit }
        default { Write-Warning "Invalid selection!!!"}
    }
}