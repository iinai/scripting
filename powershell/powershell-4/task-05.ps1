param (
    [string]$foldername = "unknown"
)

$path = Join-Path $HOME $foldername

if (Test-Path $path) {
    $files = Get-ChildItem $path | Select-Object Name
    $filesCount = (Get-ChildItem $path | Measure-Object).Count
    $newFilePath = Join-Path $HOME files.txt
    New-Item $newFilePath -ItemType File | Out-Null
    Add-Content $newFilePath -Value $files
    Write-Host "$filesCount filenames were written to $newFilePath"
}

else {Write-Host "Sorry, $foldername does not exist."}