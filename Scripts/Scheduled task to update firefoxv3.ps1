Unregister-ScheduledTask -TaskName 'Mozilla Firefox Updaterv2' -Confirm:$false
$timespan = New-TimeSpan -hours 1
$timespan2 = New-TimeSpan -hours 1 -Minutes 10
$A = New-ScheduledTaskAction -Execute 'powershell.exe' '-ExecutionPolicy Bypass -File "C:\Program Files (x86)\Scripts\firefox updates v2.ps1"'
$T1 = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Tuesday -at 12:15PM 
$T2 = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Thursday -at 9:00AM
$P = New-ScheduledTaskPrincipal 'NT Authority\System'
$S = New-ScheduledTaskSettingsSet -DontStopIfGoingOnBatteries -StartWhenAvailable -Hidden -AllowStartIfOnBatteries -RestartInterval $timespan2 -RestartCount 4 -ExecutionTimeLimit $timespan
Register-ScheduledTask -TaskName 'Mozilla Firefox Updaterv3' -TaskPath '\' -Description 'Updates Mozilla Firefox' -Action $A -Trigger $T1,$T2 -Settings $S -Principal $P