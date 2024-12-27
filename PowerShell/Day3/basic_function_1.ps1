<#
    Functions
    ------------
    - code that can be re-used. 
    - 2 types of functions
        - basic functions
            - can do basic tasks
        - advanced functions
            - we can perform
                - validation
                - filter
                - pass arguments
    - advance functions = basic function + (param, cmdletbinding)
#>

# basic function
# defining the function
function Get-Message{
    Write-Warning "You called a Basic function"
}
cls

# function calling
Get-Message