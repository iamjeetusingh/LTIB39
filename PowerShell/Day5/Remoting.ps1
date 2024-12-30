<#
    Remoting
    --------
    - to access a computer remotely.
    - in Linux:
        - GUI
            - TigerVNC (59xx)
        - CLI
            - Telnet (unsecure) - port 23
            - SSH (Secure)      - port 22
    - in windows
        - GUI
            - RDP - port 3389
        - CLI
            - PSRemoting
                - 1 to 1 remoting (Persistent remoting)
                - 1 to Many remoting (Non-Persistent remoting)--> upto 64 machines at a time.

#>

# One to Many - Non-Persistent Remoting

# to enable remoting
Enable-PSRemoting -Force

# to connect to remote computer & run commands
Invoke-Command -ComputerName member1 -ScriptBlock{
    
    New-Item -Path "c:\" -ItemType Directory -Name "LTIB39.2" -Force

    New-Item -Path "c:\LTIB39.2" -ItemType File -Name "testFile.txt" -Force

    Set-Content -Path "c:\LTIB39.2\testFile.txt" -Value "All are in SLEEPING mode!!!" -Force

}