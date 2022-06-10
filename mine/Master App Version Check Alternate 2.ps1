$Version = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object DisplayName -like "App Name Here*" | Select-Object DisplayVersion).DisplayVersion

if ($version -eq "Version Here") { "Detected" }
