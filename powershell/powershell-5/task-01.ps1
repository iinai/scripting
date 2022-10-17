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
    Write-Output("Hello my collague " + $users[$i].Firstname + " " + $users[$i].Lastname + ", this is your new account:")
    $accLast = $users | ForEach-Object {
        (($($_.Lastname)).SubString(0,4)).ToLower()
    }
    
    $accFirst = $users | ForEach-Object {
        (($($_.Firstname)).SubString(0,2)).ToLower()
    }
    Write-Output($accLast[$i] + $accFirst[$i])
    $loopCount ++
}

Write-Host "$loopCount new accounts created succesfully"