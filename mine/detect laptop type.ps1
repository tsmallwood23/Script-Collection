<#The following chassis types are considered as notebooks and portables:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-systemenclosure #>

$notebooks=(8,9,10,11,12,14,18,21)

if ( $notebooks -contains $((Get-WmiObject Win32_SystemEnclosure).ChassisTypes)){
    Write-Output 1
    Exit 0
}