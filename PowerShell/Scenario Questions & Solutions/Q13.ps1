<#
    Write a function that to perform validation on 
    keywords like “LTIMindtree”, “Coimbatore”, “Tamil Nadu” 
    only and print/display “Hello <>” message when called & 
    shows error for any other input given by user.
#>

# validation

function Get-Validation{
[cmdletbinding()]
param(
    [string][Parameter(Mandatory=$true)]
    [ValidateSet("Coimbatore","LTIMindtree","Tamil Nadu")]
    $word
    )
    Write-Host "Hello $word"
}

cls
Get-Validation -word Coimbatore            # no error
Get-Validation -word LTIMindtree           # no error
Get-Validation -word "Tamil Nadu"          # no error