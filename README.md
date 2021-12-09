# UsefulPowerShell
Useful PowerShell scripts

#### DismUnmountAllStucked.ps1

This script dismount all mount point (mount path) that was mounted with DISM.exe tool
(and maby stucked on unmounting with error [0xc142011c] WIMGetMountedImageHandle)
Check WIMMount registry key for available mount point's 
and dismount it all with /Discard parameter

#### Win10RDPEnableDisable.ps1

This script enable or disable RDP on Windows 10

#### grepLogs.ps1

This script GlobalRegExpPrint (grep) recursive for "sampletext"

#### TarAllTxtWith7zip.ps1

This scipt helps you pack all files by extension with 7-zip module and PowerShell 5.1 (or later)