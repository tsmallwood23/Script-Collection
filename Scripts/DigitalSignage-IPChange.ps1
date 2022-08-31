#Set Variables for the following
$MaskBits = 24 # This means subnet mask = 255.255.255.0
$Gateway = "192.168.220.1"
$Dns = "192.168.205.5,192.168.108.20"
#Import List of Computers and IP Addresses to match against
$computers = import-csv "\\tsjfileserver02\IT_ops\scripts\ds-name-ip.csv"
#Sets variables for each in the list
ForEach ($computer in $computers){
$computername = $($computer.Computername)
$ipaddress = $($computer.IPaddress)
}
#Gets Index number of currently connected ethernet adapter
$intname = Get-NetAdapter -name "eth*" | ? {$_.Status -eq 'up'} | Format-list -property 'interfaceindex' | Out-String
#Sets IP and DNS configuration
New-NetIPAddress –IPAddress $ipaddress –PrefixLength $MaskBits -DefaultGateway $Gateway -interfaceindex $intname.remove(1, 20)
Set-DnsClientServerAddress -ServerAddresses $Dns –Interfaceindex $intname.remove(1, 20)

