set-executionpolicy -executionpolicy unrestricted
import-module pswindowsupdate
get-windowsupdate -install -AcceptAll -AutoReboot -RootCategories 'Critical Updates','Definition Updates','Feature Packs','Security Updates','Service Packs','Update Rollups','Updates','Upgrades','Microsoft'
set-executionpolicy -executionpolicy restricted
Stop-Service IntuneManagementExtension
Start-Service IntuneManagementExtension

#You can use this command to get the current exact version
    #(Get-ComputerInfo).oshardwareabstractionlayer