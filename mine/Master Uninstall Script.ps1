#First line gets the GUID off the app you are trying to uninstall. Place the name of the app as it shows up in the registry (or use a wildcard) in quotes after Where-Object -like
$GUID = (get-ciminstance Win32_Product | Where-Object Name -like "App Name Here" | Select-Object IdentifyingNumber).IdentifyingNumber
#Then call msiexec.exe with the necessary parameters (usually something like msiexec.exe /x {GUID} /qn) and plug in the GUID of the app you are uninstalling using the variable $GUID. You may also need to chnage the uninstall string following the GUID depending on the app
msiexec.exe /X$GUID /qn
#Other options get-ciminstance Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
