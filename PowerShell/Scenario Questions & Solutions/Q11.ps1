<#
    Combine loops and conditional statements to create 
    a script that generates numbers from 1 to 20, checks 
    if each number is even or odd, and writes the 
    results to a file named `EvenOddResults.txt`.  
#>

cls
$num2 = @()

for($i=1; $i -le 20; $i++){
    $num2 += $i
}

foreach($n in $num2){
    if( $n % 2){
        Write-Output "$n is odd" | Out-File EvenOddResults.txt -Append
    }else{
        Write-Output "$n is even" | Out-File EvenOddResults.txt -Append
    }
  
}

notepad.exe EvenOddResults.txt