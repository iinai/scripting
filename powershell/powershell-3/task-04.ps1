param (
    [string] $foldername = "unknown",
    [string] $filename = "unknown",
    [int] $number = 0
)

if (Test-Path -Path $foldername) {
    Write-Host "Folder $foldername exists!";
    if (Get-ChildItem -Path $foldername $filename) {
        Write-Host "File $filename exists!"
    }
    else {
        Write-Host "Sorry, $filename in $foldername does not exist."
    }
}

else {
    New-Item $foldername -Type Directory | Out-Null;
    for ($i = 0; $i -lt $number; $i++) {
        New-Item -Path "$foldername\$filename$i" -ItemType File | Out-Null;
    }
    Write-Host "$number files created in the folder $foldername";
    Get-ChildItem $foldername | Select-Object Name
}
