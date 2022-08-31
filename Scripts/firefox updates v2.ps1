cd 'C:\Program Files\Mozilla Firefox'
#first try
.\firefox.exe --headless
start-sleep -s 10
.\updater.exe -MS
start-sleep -s 15
.\updater.exe -MS
start-sleep -s 60
$nid = (Get-Process firefox).Id
Stop-Process -Id $nid
Wait-Process -Id $nid
#second try
.\firefox.exe --headless
start-sleep -s 90
$nid = (Get-Process firefox).Id
Stop-Process -Id $nid
Wait-Process -Id $nid
#third try
.\firefox.exe --headless
start-sleep -s 30
.\updater.exe -MS
start-sleep -s 60
$nid = (Get-Process firefox).Id
Stop-Process -Id $nid
Wait-Process -Id $nid
#fourth try
.\firefox.exe --headless
start-sleep -s 15
$nid = (Get-Process firefox).Id
Stop-Process -Id $nid
Wait-Process -Id $nid