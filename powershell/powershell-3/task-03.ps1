param (
    [string] $foldername = "unknown",
    [string] $filename = "unknown"
)

if (Test-Path -Path $foldername) {
    Write-Host "Folder $foldername exists!";
    if (Get-ChildItem -Path $foldername $filename) {
        Write-Host "File $filename exists!"
    }
    else {
        Write-Host "Sorry, file $filename in folder $foldername does not exist. Create the file $filename?"}
        $permission = [string](Read-Host("Yes/no"));
        if ($permission -eq "Yes"){
            New-Item -Path $foldername $filename -ItemType File
        }
        elseif ($permission -like "n"){
            {Permission denied}
        }
        else {
            {Permission denied}
        }
}

else {Write-Host "Sorry, folder $foldername does not exist."}