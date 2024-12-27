<#
    Script Execution
    ----------------
    - it either ALLOW or DENY you to run the script using PS.

    - modes of execution / policy-name:
        - Unrestricted
            - All the scripts are ALLOWED to run.
            - the unsafe method.

        - Restricted
            - it WON'T ALLOW to run ANY script.

        - RemoteSigned
            - All REMOTE USERS must have a digitally signed script.
            - for LOCAL users, digitally signed script is NOT needed.
                - digitally signed script = PS script + certificate
            
        - AllSigned
            - both LOCAL & REMOTE users must have a digitally signed script.
      
     - cmdlets for execution:
        1. Get-ExecutionPolicy
        2. Set-ExecutionPolicy <Policy-name>     -->  RUN AS ADMINISTRATOR
#>
<#
Steps to digitally sign script:
-------------------------------
    1. To create a powershell script (it is saved as .ps1).
    2. To create a certificate
        - to use makecert.exe (depricated)
        - Openssl (in linux)
        - IIS web server (in windows server)
        - New-SelfSignedCertificate (available from PS version 5.0 and above)
    3. export this certificate 
    4. import/install this certificate
    5. bind the script & certificate together.
        - to bind the certificate
            # Set-AuthenticodeSignature
#>

# create a powershell script


# To create a certificate
New-SelfSignedCertificate -CertStoreLocation Cert:\currentuser\My `
-Subject "CN=ltib392" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert


# to check the certificate
    Get-ChildItem Cert:\currentuser\My

# export this certificate
    # PS cmdlet  --> Export-PfxCertificate
    # GUI --> CertMgr.msc

# import/install this certificate
    # PS cmdlet  --> Import-PfxCertificate
    # GUI --> CertMgr.msc

# bind the script & certificate together
$cert = Get-ChildItem Cert:\currentuser\My\2B386CAB5CBE99C1CF58B026A3C7C1DB9A4DD020
$file = "E:\PowerShell\batch39.2\Day3\MyScript.ps1"
Set-AuthenticodeSignature -Certificate $cert -FilePath $file