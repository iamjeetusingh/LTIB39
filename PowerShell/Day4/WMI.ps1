<#
    CIM
    - Common Information Model
    - its the way to fetch the information of a computer (local or remote(s))
    - information like:
        - hardware
            - RAM
            - HDD/SSDs
            - NIC
            - CD/DVD drive
            - Heat Sink
            - battery
            - motherboard
            - BIOS
            - Bus
                - etc...
        - software
            - name, version
        - Process
        - service 
        - firmware
    - CIM is an OPEN SOURCE approach.


    WMI
    - Windows Management Instrumentation
    - WMI = Microsoft implementation of CIM
    - it can also fetch information like:
        - hardware
        - software
        - Process
        - service 
        - firmware

Cmdlet for WMI
    - Get-WMIObject

OR alias
    - gwmi

#>

# to list all (CIM & WMI) the avilable classes
Get-WmiObject -List
Get-WmiObject -List | Measure-Object

# to list only WMI classes
Get-WmiObject -List | Where-Object {$_.Name -match "^Win32_"}
Get-WmiObject -List | Where-Object {$_.Name -match "^Win32_"} | measure

# to list classes of WMI
Get-WmiObject -Class Win32_bios
(Get-WmiObject -Class Win32_bios).serialnumber
# OR
$bios = Get-WmiObject -Class Win32_bios
$bios.serialnumber

Get-WmiObject -Class Win32_OperatingSystem
Get-WmiObject -Class Win32_ComputerSystem
Get-WmiObject -Class Win32_LogicalDisk
Get-WmiObject -Class Win32_PhysicalMemory
Get-WmiObject -Class Win32_battery
Get-WmiObject -Class Win32_NetworkAdapter
Get-WmiObject -Class Win32_Process
Get-WmiObject -Class Win32_Service | ft