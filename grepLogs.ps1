<#
This script GlobalRegExpPrint (grep) recursive for "sampletext"
#>
$grepString = "error"
$lookupFiles = "*.log"

# Get all files mathced by $lookupFiles var template
Get-ChildItem -Include $lookupFiles -Recurse `
# Next - Select-String - this find text and strings in file
| % {  Select-String -Pattern $grepString $_.FullName `
# And output with pagination
| Out-Host -Paging }
