param (
    [String] $filename = "urls.txt"
)

if (Test-Path $filename) {
    Write-Host "File $filename exists!"
    $urls = Get-Content $filename
    Start-Process -FilePath "chrome.exe" -ArgumentList $urls
}
else {Write-Host "Sorry, $filename does not exist."}