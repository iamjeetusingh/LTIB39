<#
Write a script to create a variable containing 
a list of five numbers. Use a loop to calculate the square 
of each number and display the results.
#>
cls

$arr = @()

for($i=0; $i -lt 5; $i++){
    $num = Read-Host "Enter number: "
    $arr += [int]$num
}

foreach($a in $arr){
    Write-Host "Square of $a is " -NoNewline
    Write-Host $($a * $a) -ForegroundColor Cyan
}