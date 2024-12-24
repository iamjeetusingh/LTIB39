#array

# method 1 (old)
$arr1 = 1,2,3,4,5,6,7,8,9,0
$arr1.GetType()

# method 2
$arr2 = @()
$arr2.GetType()

$arr3 = @(3,4,5,6,7,8)
$arr3.GetType()
$arr3.Count
$arr3.Length
$arr3
Write-Host $arr3

$arr4 = @(1..50)
$arr4
$arr4.Count
$arr4[0]
$arr4[-1]
$arr4[1..5]
$arr4[-1..-5]

# multi-dim array
$arr5 = @(
    @(1,2,3),
    @("a","b"),
    @(Get-Process)
)
$arr5[0][0]
$arr5[1][0]
$arr5[2][0]