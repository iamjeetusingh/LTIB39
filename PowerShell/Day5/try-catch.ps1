# try-catch syntax
try{
    # code that might have an error
}catch{
    #if try catches an error
}


cls
try{
    something
}catch{
    Write-Warning "SOMETHING is written"
}


cls
try{
    $val1 = 1
    $val2 = 0
    $val3 = $val1 / $val2
}catch{
    Write-Error "REALLY!!!! Divide by ZERO"
}


# try-catch-finally
cls
try{
    $val1 = 1
    $val2 = 0
    $val3 = $val1 / $val2
}catch{
    Write-Warning "REALLY!!!! Divide by ZERO"
}finally{
    $val1 = $null
    $val2 = $null
    $val3 = $null
}

$val1
$val2