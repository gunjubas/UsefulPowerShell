# UsefulPowerShell
Useful PowerShell scripts

#### DismUnmountAllStucked.ps1

This script dismount all mount point (mount path) that was mounted with DISM.exe tool (and maby stucked on unmount with error [0xc142011c] WIMGetMountedImageHandle)
Check WIMMount registry key for available mount point's and dismount it all with /Discard parameter
