param (
    [string] $foldername = "unknown",
    [string] $filename = "unknown"
)

if (Test-Path -Path $foldername) {
    Write-Host "Folder $foldername exists!";
    if (Get-ChildItem -Path $foldername $filename) {
        Write-Host "File $filename exists!"
    }
    else {Write-Host "Sorry, $filename in $foldername does not exist."}
}

else {Write-Host "Sorry, $filename in $foldername does not exist."}