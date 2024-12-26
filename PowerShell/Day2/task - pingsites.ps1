﻿<# 
    task
        - add 5-6 website names in an array & ping them.
        - store all the pingable websites names in a text file "pingables.txt" & 
        - non-pingable names in another file "nonpingables.txt"
#>
cls
$sites = @("google.com","ltimindtree.com","facebook.com","youtube.com","amazon.in")
foreach ( $s in $sites){
    if(Test-Connection $s -Count 1 -ErrorAction SilentlyContinue){
        $s | Out-File pingables.txt -Append
    }else{
        $s | Out-File nonpingables.txt -Append
    }
}

# to check/validate
notepad.exe .\pingables.txt
notepad.exe .\nonpingables.txt