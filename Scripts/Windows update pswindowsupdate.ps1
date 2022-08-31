import-module -name pswindowsupdate

get-windowsupdate -acceptall -download -install -autoreboot

restart-service -name "Microsoft Intune Management Extension"
