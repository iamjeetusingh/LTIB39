<# loops
    - while loop
    - do-while loop
    - for loop
    - foreach loop
#>

# while loop
$arr1 = @("a","b","c")
$c = 0
cls
while ( $c -lt $arr1.Length ){
    $arr1[$c]
    $c += 1
    #sleep 1
}

# do-while loop
cls
$array = @("item1", "item2", "item3")
$counter = 0;

do {
   $array[$counter]
   $counter += 1
} while($counter -lt $array.length)


# for loop
cls
$arr3 = @(1,2,3,4,5)
for ( $i = 0; $i -lt $arr3.Length; $i++ ){
    Write-Host "Index Value $i is" $arr3[$i]
}

# foreach
cls
$array2 = @("item1", "item2", "item3","item4","item5")
foreach ($element in $array2) { 
    $element 
}


cls
foreach( $v in (@(1..50)) ){
    Write-Host $v
}

