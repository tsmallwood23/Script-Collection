$regPath = 'HKCU:\SOFTWARE\Microsoft\Office\Outlook\Addins\GrammarlyAddIn.Connect'
New-Item $regPath -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty $regPath -Name LoadBehavior -Value 3 -Force | Out-Null

$regPath2 = 'HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Resiliency\DoNotDisableAddinList'
New-Item $regPath2 -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty $regPath2 -Name GrammarlyAddIn.Connect -Value 1 -Force | Out-Null

$regPath3 = 'HKCU:\SOFTWARE\Policies\Microsoft\office\16.0\outlook\resiliency\addinlist'
New-Item $regPath3 -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty $regPath3 -Name GrammarlyAddIn.Connect -Type String -Value 1 -Force | Out-Null

$regPath4 = 'HKCU:\SOFTWARE\Microsoft\Office\Word\Addins\GrammarlyAddIn.Connect'
New-Item $regPath4 -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty $regPath4 -Name LoadBehavior -Value 3 -Force | Out-Null

$regPath5 = 'HKCU:\SOFTWARE\Microsoft\Office\16.0\Word\Resiliency\DoNotDisableAddinList'
New-Item $regPath5 -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty $regPath5 -Name GrammarlyAddIn.Connect -Value 1 -Force | Out-Null

$regPath6 = 'HKCU:\SOFTWARE\Policies\Microsoft\office\16.0\word\resiliency'
$regPath7 = 'HKCU:\SOFTWARE\Policies\Microsoft\office\16.0\word\resiliency\addinlist'
New-Item $regPath6 -ErrorAction SilentlyContinue | Out-Null
New-Item $regPath7 -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty $regPath7 -Name GrammarlyAddIn.Connect -Value 1 -Force | Out-Null


