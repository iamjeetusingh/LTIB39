# list Processes
Get-Process

# list all the members
Get-Process | Get-Member

# count SVCHOST process
Get-Process -Name svchost | Measure-Object

# list Process ID, Name & their CPU
Get-Process | Select-Object ID, ProcessName, CPU

# sorting the processes in ascending order
Get-Process | Select-Object ID, ProcessName, CPU | Sort-Object CPU

# sorting the processes in descending order
Get-Process | Select-Object ID, ProcessName, CPU | Sort-Object -Descending CPU

# Listing top 10 processes in descending order
Get-Process | `
Sort-Object -Descending CPU | `
Select-Object ID, ProcessName, CPU -First 10

# list top 10 UNIQUE process in descending order
Get-Process | `
Select-Object CPU, ProcessName -Unique | `
Sort-Object -Descending CPU | `
Select-Object  -First 10

# list top 10 UNIQUE process upto 2 decimal places
Get-Process | `
Select-Object `
@{ l="CPU"; e={[math]::Round(($_.CPU),2)} }, `
ProcessName -Unique | `
Sort-Object -Descending CPU | `
Select-Object  -First 10

# list top 10 UNIQUE process upto 2 decimal places - alternate
cls 
Get-Process | `
Sort-Object CPU -Descending | `
Select-Object Name, `
@{l = "CPU" ; e={[math]::Round(($_.CPU),2)}} `
-First 10 -Unique

