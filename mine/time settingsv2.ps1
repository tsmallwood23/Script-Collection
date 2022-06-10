
$services = 'w32time'

Get-Service | Where-Object {
    $services -contains $_.Name -and $_.Status -eq 'Stopped'
} | Start-Service #only starts the time service if it is not running
Set-Service -Name w32time -StartupType Automatic #sets the windows time service to start automatically. for some reason after moving to aad from ad this was set to manual
w32tm /config /manualpeerlist:"time.windows.com" /syncfromflags:manual /reliable:yes /update #sets the time server to time.windows.com
net stop w32time #next two commands restart the service
net start w32time
w32tm /resync #syncs the time