<#
    Task
        - ask user to input 2 numbers using functions and 
          display the total of those numbers.
#>

function Add-Numbers{
    param($num1, $num2)
        Write-Host "Total of $num1 & $num2 is $($num1+$num2)"
}

cls

[int]$num1 = Read-Host "Enter 1st number"
[int]$num2 = Read-Host "Enter 2nd number"

Add-Numbers -num1 $num1 -num2 $num2