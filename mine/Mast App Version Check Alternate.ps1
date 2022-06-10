$Version = (Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object DisplayName -like "App Name Here*" | Select-Object DisplayVersion).DisplayVersion

if ($version -ge "Version Here") { "Detected" }
