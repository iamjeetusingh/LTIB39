<#
    Data structures
        - variables
        - arrays
        - hashtables
#>

# variables
$a = 10             # stores int value
$a.GetType()

$b = 3.14           # stores float/double value
$b.GetType()

$c = "Hello"        # stores string value
$c.GetType()

$d = Get-Date       # stores datetime value
$d.GetType()
$d.DayOfWeek
$d.DayOfYear
$d.Hour
$d.Minute

# use of write-host cmdlet
cls
$name = "Jeetu"
Write-Host "Hello Mr. $name" -ForegroundColor Black -BackgroundColor White

# use of read-host
cls
$name = Read-Host "Enter ur name "
Write-Host "Hello Mr. $name" -ForegroundColor Black -BackgroundColor White


<#
TASK - ask user to enter 2 numbers & display the total of those numbers.
#>
cls
[int]$num1 = Read-Host "Enter 1st number"
[int]$num2 = Read-Host "Enter 2nd number"
$num3 = $num1 + $num2
Write-Host "Total of $num1 & $num2 is $num3"

# built in variables
$env:USERNAME
$Error
$Error.Count
$Error | Out-File .\errorlog.txt 
$Error | Out-File .\errorlog.txt -Append

# this nullifies the variable values
$num3 = $null
$num1 = $null
$num2 = $null
Write-Host "$num3"


$num3 = 30
Write-Host "$num3"
