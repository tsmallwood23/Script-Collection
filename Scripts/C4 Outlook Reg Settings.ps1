New-Item -Path 'HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\General' -force
Set-Itemproperty -path 'HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Preferences' -Name 'DelegateSentItemsStyle' -value 1 -force
Set-Itemproperty -path 'HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\General' -Name 'DelegateWastebasketStyle' -value 4 -force
Set-Itemproperty -path 'HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Preferences' -Name 'ShowFrom' -value 1 -force