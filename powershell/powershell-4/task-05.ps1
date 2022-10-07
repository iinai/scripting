param (
    [String] $foldername
)

if (Test-Path -Path $foldername) {
    Write-Host "Folder $foldername exists!";
}

else {Write-Host "Sorry, $foldername does not exist."}