param (
    [String] $filename = "localusers.csv "
)

function Add-MyEvent($type, $message) {
    Write-EventLog -LogName Application -Source MyPowerShell -EntryType $type -EventID 1  -Message $message
}

try {
    # Hae local userit ja tallenna tiedot csv -fileen
    Get-LocalUser | Select-Object Name,FullName,SID,Lastlogon | Export-Csv -Path $filename -NoTypeInformation
    Add-MyEvent Information "CSV -file localusers.csv was created succesfully"
}

catch {
    Add-MyEvent Error "Could not create CSV -file localusers.csv"
}