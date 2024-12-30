# importing the module
Import-Module PSDesiredStateConfiguration

# fetching the computer names
notepad.exe .\comp.txt
$comp = Get-Content .\comp.txt

# list all the config that can be applied in DSC
Get-DscResource

# defining the DSC configuration
Configuration my-dscconfig{
    Node $comp{
        Service bits{
            Name = "BITS"
            State = "Running"
        }
        Service winrm{
            Name = "WinRM"
            State = "Running" 
        }
    }
}

# to generate the MOF (Microsoft Object File / Managed Object File) file
my-dscconfig

# to apply the DSC on node(s)
Start-DscConfiguration -Path .\my-dscconfig -Verbose -Wait

# to validate the  DSC is applied or not
Test-DscConfiguration -CimSession member1
Test-DscConfiguration -CimSession dc