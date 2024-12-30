<#
    $ErrorActionPreference --> what to do, when an error occurs?    
    types of $ErrorActionPreference values:
        1. Continue
            - when an error occurs, it will run all the cmdlets till the END & DISPLAY error.
        2. SilentlyContinue
            - when an error occurs, it will run all the cmdlets till the END & HIDE error.
        3. Stop
            - when an error occurs, it will stop the execution wherever error occurs & displays the error.
        4. Inquire
            - when an error occurs, it will inquire, WHAT TO DO?
        
#>
cls
$ErrorActionPreference
HOSTNAME.EXE
jeetu
Get-Date

cls
$ErrorActionPreference = "SilentlyContinue"
$ErrorActionPreference
HOSTNAME.EXE
jeetu
Get-Date

cls
$ErrorActionPreference = "stop"
$ErrorActionPreference
HOSTNAME.EXE
jeetu
Get-Date

cls
$ErrorActionPreference = "Inquire"
$ErrorActionPreference
HOSTNAME.EXE
jeetu
Get-Date


$ErrorActionPreference = "Continue"