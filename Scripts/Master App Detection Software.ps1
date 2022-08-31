#Replace App Name Here with the name of the app you are trying to detect. It will grab the installed verison of the app if there is one and assign it to the $Version variable

$Version = (get-ciminstance Win32_Product | Where-Object Name -like "App Name Here" | Select-Object Version).Version

#Replace Version Here with the version of the app you are trying to detect. It will check if that version is installed and if it is it will write detected, if not it will return blank. Intune counts any output as detected as long as there is no error. It counts an empty repsone as not detected.

if ($version -ge "Version Here") { "Detected" }