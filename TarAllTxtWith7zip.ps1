<# 

This scipt helps you pack all files by extension with 7-zip module and PowerShell 5.1 (or later)

First install 7-zip PowerShell module with Administrator previlegies

Install-Module -Name 7Zip4PowerShell -Verbose

#>

# Next just run pipeline with custom parameters. For example

Get-ChildItem -Recurse -Force -Include *.txt | Compress-7Zip -ArchiveFileName "logs.tar" -Format Tar -CompressionLevel None

# Found all *.txt files and pack it into tar with saving directory structure