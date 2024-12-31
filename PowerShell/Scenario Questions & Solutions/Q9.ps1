<#
Write a script to create a variable containing 
a list of five numbers. Use a loop to calculate the square 
of each number and display the results.
#>

cls

$num = @(12,42,34,51,14)

foreach($n in $num){
    Write-Host "Square of $n is " -NoNewline
    Write-Host $($n * $n) -ForegroundColor Cyan
}