param (
    [String] $filename = "unknown"
)

Do { 
    $workstation = [string](Read-Host("Give a workstation name, press enter to quit"))
    $workstationlist += $workstation + " "
}
Until ($workstation -like "")

# Tallennetaan workstationit fileen 
$path = Join-Path $HOME "$filename.txt"
Add-Content $path -Value $workstationlist

Write-Host "$path created succesfully"