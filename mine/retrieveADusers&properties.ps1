Import-module ActiveDirectory
get-aduser -filter "enabled -eq 'true'" -Properties displayName,givenName,sn,distinguishedname,mail,mailnickname,mobile,telephoneNumber,ipphone,title |
select displayName,givenName,sn,distinguishedname,mail,mailnickname,mobile,telephoneNumber,ipphone,title |
export-csv "c:\export.csv" -NoTypeInformation