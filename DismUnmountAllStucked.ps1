<#
This script dismount all mount point (mount path) that was mounted with DISM.exe tool (and maby stucked on unmount with error [0xc142011c] WIMGetMountedImageHandle)
Check WIMMount registry key for available mount point's and dismount it all with /Discard parameter
#>

# Path to WIMMount registry key
$dismRegKeyPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WIMMount\Mounted Images"

# Get all UUID in WIMMount path
Get-ChildItem -Path Registry::$dismRegKeyPath | % { 

# Iterate over UUID's and get all "Mount path"
 $mountWimPath = (Get-Item -Path Registry::$_ | Get-ItemPropertyValue -Name "Mount Path")

# Dismount path that was found in previous step
 Start-Process -FilePath "C:\Windows\System32\Dism.exe" -ArgumentList "/Unmount-Image /MountDir:$mountWimPath /Discard /English" -Wait

}