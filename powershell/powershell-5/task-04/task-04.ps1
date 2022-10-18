param (
    [String] $filename = "info.csv"
)

Get-LocalUser | Select-Object Name,FullName,SID,Lastlogon | Export-Csv -Path $filename -NoTypeInformation