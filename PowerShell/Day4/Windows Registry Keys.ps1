# Windows Registry Keys

Get-PSDrive -PSProvider Registry

# to list the content of HKLM (Hash Key Local Machine) --> DO NOT use this for anything.
Get-ChildItem HKLM:\

# to list the content of HKCU (Hash Key Current User)  --> will use this for practical
Get-ChildItem HKCU:\

# to create registry folder
New-Item -Path hkcu:\ -Name "LTIB392" -Force

# to create reg key within this folder
New-ItemProperty -Path HKCU:\LTIB392 -Name "Radha" -Value "Jeetu's Daughter" -Force

# to update the reg key value
Set-ItemProperty -Path HKCU:\LTIB392 -Name "Radha" -Value "HAHAHHAHAH" -Force
Get-ItemProperty -Path HKCU:\LTIB392 -Name "Radha"

# to delete reg key
Remove-ItemProperty -Path HKCU:\LTIB392 -Name "Radha" -Force

# to delete the reg folder
Remove-Item -Path HKCU:\LTIB392 -Force