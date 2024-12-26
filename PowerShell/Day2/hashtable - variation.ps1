cls
Get-Service -Name BITS | `
Select-Object Name, `
@{l="FullName" ; e={$_.DisplayName}}, `
Status