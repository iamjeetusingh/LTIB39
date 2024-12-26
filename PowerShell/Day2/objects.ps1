<#
    Objects:
    --------
     - are the instance of a class.
     - get-member cmdlet
#>

Get-Date    | Get-Member
Get-Process | Get-Member
Get-Service | Get-Member

# fetching members of a cmdlet
cls
$d = Get-Date
Write-Host "Current time is: $($d.Hour):$($d.Minute):$($d.Second)"

# using the members
Get-Service -Name BITS | Select-Object Name, StartType, Status
$stat = (Get-Service -Name BITS).Status
Write-Host "Current status of BITS service is: $stat"

Test-Connection 127.0.0.1 | Get-Member
Test-Connection 127.0.0.1
Test-Connection 127.0.0.1 | Select-Object Source, Destination, IPV4Address
Test-Connection 127.0.0.1 | Select-Object PSComputerName, Address, IPV4Address

# to limit the ping 
Test-Connection 127.0.0.1 -Count 1 | Select-Object PSComputerName, Address, IPV4Address

# to hide the errors
Test-Connection 127.0.0.1 -Count 1 -ErrorAction SilentlyContinue `
| Select-Object PSComputerName, Address, IPV4Address

# creating a custom object
$obj1 = New-Object -TypeName psobject
$obj1.GetType()                            # listing the data type
$obj1 | Get-Member                         # listing all current/default members

# creating a member for this object.
Add-Member -InputObject $obj1 -MemberType NoteProperty -Name "batch" -Value "39.2"
$obj1 | Get-Member

# creating multiple members for an object.
$newmembers = @{
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
    key4 = "value4"
    key5 = "value5"
}
$obj2 = New-Object -TypeName psobject -Property $newmembers
$obj2 | Get-Member