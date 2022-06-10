#Set Variables for the following
$MaskBits = 24 # This means subnet mask = 255.255.255.0
$Gateway = "192.168.220.1"
$Dns = "192.168.205.5,192.168.108.20"
if($env:computername -eq 'CAL-ConWest'){
   write-host("cal-")
} elseif($env:computername -eq 'CC-MR230A'){
   write-host("cc-mr230a")
} elseif($env:computername -eq 'CC-MR230B'){
   write-host("cc-mr230b")
} elseif($env:computername -eq 'tanner-lenovo'){
   $intname = Get-NetAdapter -name "eth*" | ? {$_.Status -eq 'up'} | Format-list -property 'interfaceindex' | Out-String
   New-NetIPAddress –IPAddress “192.168.220.250” –PrefixLength $MaskBits -DefaultGateway $Gateway -interfaceindex $intname.remove(1, 20)
   Set-DnsClientServerAddress -ServerAddresses $Dns –Interfaceindex $intname.remove(1, 20)
} else {
   write-host("Name not changed")
}