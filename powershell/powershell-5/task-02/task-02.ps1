param (
    [String] $filename = "unknown"
)

Try {
    $urls = Get-Content $filename -ErrorAction Stop
    Start-Process -FilePath Chrome -ArgumentList $urls -ErrorAction Stop
    Write-Host "Urls opened succesfully!"
}
Catch {
    $ErrorMessage = $_.Exception.Message
    Write-Output "Failed to read file with message: $ErrorMessage"
}