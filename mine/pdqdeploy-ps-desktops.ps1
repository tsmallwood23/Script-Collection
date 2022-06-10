netsh advfirewall set allprofiles state off
ipconfig /registerdns

Invoke-Command -ComputerName TSJ-WSUS01.sanjose.org -ScriptBlock  {ipconfig /flushdns; pdqinventory.exe ADSync -startsync; pdqdeploy.exe Deploy -Package "Desktops" -Targets $args[0]} -Args $env:COMPUTERNAME 2>&1

start-sleep 30
while(test-path "C:\Windows\AdminArsenal\PDQDeployRunner\service-1.lock"){
start-sleep 30
}