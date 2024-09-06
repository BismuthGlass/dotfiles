$CurrentDir = Get-Location

New-Item -Path $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -ItemType SymbolicLink -Value $CurrentDir\Powershell\Microsoft.PowerShell_profile.ps1 -Force
