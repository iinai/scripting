param (
    [string]$foldername = "unknown"
)

if (Test-Path -Path $foldername) {
    $count = (Get-ChildItem $foldername | Measure-Object).Count;
    Write-Host "$count files in the folder $foldername";
    Get-ChildItem $foldername | Select-Object Name
}

else {Write-Host "Sorry, $foldername does not exist."}

