# validation

function Get-Validation{
[cmdletbinding()]
param(
    [string][Parameter(Mandatory=$true)]
    [ValidateSet("LTI","LTIMindtree")]
    $word
    )

    Write-Host "Hello $word"

}

cls
#Get-Validation -word LTI            # no error
#Get-Validation -word LTIMindtree    # no error
Get-Validation -word Accenture       # validation error