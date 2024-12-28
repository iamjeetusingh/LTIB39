cls
Get-Process | select name, `
@{l="PagedMemorySize" ; e = {[math]::Round(($_.PagedMemorySize/1mb),2)}} `
-First 10 