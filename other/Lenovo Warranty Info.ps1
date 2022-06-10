Get-CimInstance -Namespace root/Lenovo -ClassName Lenovo_WarrantyInformation | Select-Object `
    SerialNumber, `
    StartDate, `
    EndDate, `
    LastUpdateTime | ConvertTo-Json