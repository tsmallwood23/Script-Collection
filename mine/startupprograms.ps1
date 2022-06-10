$TargetFile = "$env:C:\Program Files (x86)\Zoom\bin\zoom.exe"
$ShortcutFile = "$env:C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Zoom.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()