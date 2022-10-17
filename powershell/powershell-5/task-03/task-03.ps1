param (
    [String] $filename = "users.csv"
)

if (Test-Path $filename) {
    Write-Host "File $filename exists!"
}
else {Write-Host "Sorry, $filename does not exist."}

$users = Import-Csv "$filename"
$loopCount = 0

for ($i = 0; $i -lt $users.Count; $i++) {

    $accLast = $users | ForEach-Object {
        (($($_.Lastname)).SubString(0,4)).ToLower()
    }
    
    $accFirst = $users | ForEach-Object {
        (($($_.Firstname)).SubString(0,2)).ToLower()
    }

    $account = $accLast[$i] + $accFirst[$i]

    $permission = Read-Host("A new local account "+ $account + " will be created for " + $users[$i].Firstname + " " + $users[$i].Lastname + " [Y]es/[N]o")
    if ($permission -eq "Y"){
        New-LocalUser -Name $account -Description "Description of this account." -NoPassword | Out-Null
        $loopCount ++
    }
    elseif ($permission -like "N"){
        {Account was not created!}
    }
    else {
        {Account was not created!}
    }
}

Write-Host "$loopCount new accounts created succesfully"