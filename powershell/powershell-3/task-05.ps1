param (
    [string] $foldername = "unknown",
    [string] $filename = "unkown"
)

if (Test-Path -Path $foldername) {
    $count = ( Get-ChildItem $foldername | Measure-Object ).Count
    Write-Host "$count items in the folder $foldername";
    $newname = "assignment"
    $permission = [string](Read-Host ("All $count files will be renamed with name $newname. Yes/No"));
    if ($permission -eq "Yes"){
        Get-ChildItem -Path $foldername | ForEach-Object -Begin { $count, $newname = 1, "assignment" } -Process { Rename-Item $_ -NewName $newname$count; $count++ };
        Write-Host "Task ready! Here are your new files:"
        Get-ChildItem $foldername | Select-Object Name;
    }
    elseif ($permission -like "No"){
        {Permission denied}
    }
    else {
        {Permission denied}
    }
}

else {Write-Host "Sorry, folder $foldername does not exist."}