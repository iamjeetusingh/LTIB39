<# 
    task - list all running services in GREEN color & all stopped services in RED color.
    
    hints:
        - use get-service cmdlet
        - use foreach loop
        - use if-else statement
        - use write-host with foregroundcolor GREEN & RED color.

#>
cls
$green = @()
$red = @()
foreach( $gsv in Get-Service ){
    
    if ( $gsv.status -eq "Running" ){
        #Write-Host "$($gsv.Name)" -ForegroundColor Green
        $green = $green + $gsv.name
    }else{
        #Write-Host "$($gsv.Name)" -ForegroundColor Red
        $red = $red + $gsv.name
    }

}

write-host "Running" -ForegroundColor Green
$green
write-host "###########################################################"

write-host "Stopped" -ForegroundColor red
$red