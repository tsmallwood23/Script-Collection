New-ItemProperty -Path Registry::"HKCU\SOFTWARE\Policies\Microsoft\Office\16.0\Common\Internet" -Name "OnlineStorage" -Value "3" -PropertyType "DWORD" -Force
