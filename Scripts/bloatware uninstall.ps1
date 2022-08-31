Get-AppxPackage -AllUsers *MirametrixInc.GlancebyMirametrix* | Remove-AppxPackage

$Glance = (Get-ProvisionedAppxPackage -online | Where-Object DisplayName -like *MirametrixInc.GlancebyMirametrix* | Select-Object PackageName).PackageName
Remove-ProvisionedAppxPackage -Online -PackageName $Glance


Get-AppxPackage -AllUsers *Microsoft.XboxApp* | Remove-AppxPackage

$Xbox = (Get-ProvisionedAppxPackage -online | Where-Object DisplayName -like *Microsoft.XboxApp* | Select-Object PackageName).PackageName
Remove-ProvisionedAppxPackage -Online -PackageName $Xbox


Get-AppxPackage -AllUsers *Microsoft.SkypeApp* | Remove-AppxPackage

$Skype = (Get-ProvisionedAppxPackage -online | Where-Object DisplayName -like *Microsoft.SkypeApp* | Select-Object PackageName).PackageName
Remove-ProvisionedAppxPackage -Online -PackageName $Skype


Get-AppxPackage -AllUsers *Microsoft.Office.Onenote* | Remove-AppxPackage

$OneNote = (Get-ProvisionedAppxPackage -online | Where-Object DisplayName -like *Microsoft.Office.OneNote* | Select-Object PackageName).PackageName
Remove-ProvisionedAppxPackage -Online -PackageName $OneNote


Get-AppxPackage -AllUsers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage

$Solitaire = (Get-ProvisionedAppxPackage -online | Where-Object DisplayName -like *Microsoft.MicrosoftSolitaireCollection* | Select-Object PackageName).PackageName
Remove-ProvisionedAppxPackage -Online -PackageName $Solitaire


Get-AppxPackage -AllUsers *Microsoft.MixedReality.Portal* | Remove-AppxPackage

$MixedReality = (Get-ProvisionedAppxPackage -online | Where-Object DisplayName -like *Microsoft.MixedReality.Portal* | Select-Object PackageName).PackageName
Remove-ProvisionedAppxPackage -Online -PackageName $MixedReality