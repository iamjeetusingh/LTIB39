<#
    Connect to a single remote server and install IIS on this server.
#>
# check the current connectivity status
Get-PSSession

New-PSSession -ComputerName member1 -Name "bluesky"

# check the current connectivity status
Get-PSSession

# entering into the connection
Enter-PSSession -Id 22

# install IIS web server on remote computer
Get-WindowsFeature -Name Web-server
Install-WindowsFeature -Name Web-server -IncludeAllSubFeature -IncludeManagementTools -Source "D:\sources\sxs"

# exit the connection
Exit-PSSession 

Get-PSSession

# remove the PS session
Remove-PSSession -id 22