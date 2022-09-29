param (
    [string]$foldername = "unknown"
)

if (Test-Path -Path $foldername) {
    "Path exists!"
}

else {Write-Host "Sorry, $foldername does not exist."}