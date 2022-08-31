$key = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey("SOFTWARE\Policies",[Microsoft.Win32.RegistryKeyPermissionCheck]::ReadWriteSubTree,[System.Security.AccessControl.RegistryRights]::ChangePermissions)
$acl = $key.GetAccessControl()
$rule = New-Object System.Security.AccessControl.RegistryAccessRule (".\USERS","FullControl",@("ObjectInherit","ContainerInherit"),"None","Allow")
$acl.SetAccessRule($rule)
$key.SetAccessControl($acl)
$acl | export-csv -path 'C:\Program Files (x86)\Scripts\regacl.csv'