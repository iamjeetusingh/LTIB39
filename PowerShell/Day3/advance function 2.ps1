#advance functions

function Add-Numbers{
[cmdletbinding()]
    param(
    [int][Parameter(Mandatory=$true,HelpMessage="Enter a number")]$n1, 
    [int][Parameter(Mandatory=$true,HelpMessage="Enter a number")]$n2
    )
        Write-Host "Total of $n1 & $n2 is $($n1+$n2)"
}

cls

#Add-Numbers -n1 29 -n2 34             # Passing both values
Add-Numbers -n1 29                     # Passing only 1 parameter