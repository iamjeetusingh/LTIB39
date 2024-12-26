<#
    Conditional statements
        - if statements
        - if-else statements
        - Nested if-else statements
        - Switch statements
#>

# if statements
cls
if ( 5 -eq 5 ){
    Write-Host "its equal"
}

# if-else statements
cls
if ( 5 -eq 51 ){
    Write-Host "its equal" -ForegroundColor Green
}else{
    Write-Host "its not equal" -ForegroundColor Red
}

